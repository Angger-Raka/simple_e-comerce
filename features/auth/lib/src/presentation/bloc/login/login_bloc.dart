import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(
      // this.usecase,
      )
      : super(LoginInitial()) {
    on<LoginEvent>((event, emit) {});
    on<Login>(_login);
  }

  Future<void> _login(
    Login event,
    Emitter<LoginState> emit,
  ) async {}
}
