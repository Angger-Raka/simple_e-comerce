import 'package:auth/auth.dart';
import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:meta/meta.dart';

part 'authenticate_event.dart';
part 'authenticate_state.dart';

class AuthenticateBloc extends Bloc<AuthenticateEvent, AuthenticateState> {
  AuthenticateBloc(
    this.usecase,
  ) : super(Unauthenticated()) {
    on<GetAuthenticated>(_getAuthenticated);
  }

  final StatusAuthUseCase usecase;

  Future<void> _getAuthenticated(
    GetAuthenticated event,
    Emitter<AuthenticateState> emit,
  ) async {
    final status = await usecase(NoParams());
    status.fold(
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
