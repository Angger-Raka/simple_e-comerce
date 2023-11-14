part of 'login_bloc.dart';

@immutable
sealed class LoginEvent extends Equatable {}

class Login extends LoginEvent {
  final String email;
  final String password;

  Login({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}
