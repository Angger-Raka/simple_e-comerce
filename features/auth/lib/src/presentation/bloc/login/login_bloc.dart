import 'package:auth/src/data/data.dart';
import 'package:auth/src/domain/usecases/usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(
    this.usecase,
  ) : super(LoginInitial()) {
    on<LoginEvent>((event, emit) {});
    on<Login>(_login);
  }

  final LoginUseCase usecase;

  Future<void> _login(
    Login event,
    Emitter<LoginState> emit,
  ) async {
    emit(LoginLoading());
    final result = await usecase(
      RequestLogin(
        identifier: event.username,
        password: event.password,
      ),
    );
    result.fold(
      (l) => emit(LoginFailure(l.message)),
      (r) => emit(
        LoginSuccess(
          "Login Success",
        ),
      ),
    );
  }
}
