import 'package:auth/auth.dart';
import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:meta/meta.dart';

part 'authenticator_event.dart';
part 'authenticator_state.dart';

class AuthenticatorBloc extends Bloc<AuthenticatorEvent, AuthenticatorState> {
  AuthenticatorBloc(
    this.usecase,
  ) : super(Unauthenticated()) {
    on<AuthenticatorInit>(_init);
  }

  final StatusAuthUseCase usecase;

  @override
  Future<void> _init(
    AuthenticatorInit event,
    Emitter<AuthenticatorState> emit,
  ) async {
    final result = await usecase(NoParams());
    result.fold(
      (l) => emit(Unauthenticated()),
      (r) {
        if (r) {
          emit(Authenticated());
        } else {
          emit(Unauthenticated());
        }
      },
    );
  }
}
