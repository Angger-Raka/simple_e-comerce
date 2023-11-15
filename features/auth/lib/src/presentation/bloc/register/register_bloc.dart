import 'package:auth/auth.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:equatable/equatable.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(
    this.usecase,
  ) : super(RegisterInitial()) {
    on<RegisterEvent>((event, emit) {});
    on<Register>(_register);
  }

  final RegisterUseCase usecase;

  Future<void> _register(
    Register event,
    Emitter<RegisterState> emit,
  ) async {
    emit(RegisterLoading());
    final result = await usecase(
      RequestRegister(
        username: event.username,
        password: event.password,
        email: event.email,
        name: event.name,
      ),
    );
    result.fold(
      (l) => emit(RegisterFailure(l.message)),
      (r) => emit(
        RegisterSuccess(
          "Register Success",
        ),
      ),
    );
  }
}
