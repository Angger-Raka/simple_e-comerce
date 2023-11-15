part of 'register_bloc.dart';

@immutable
sealed class RegisterEvent extends Equatable {}

class Register extends RegisterEvent {
  final String email;
  final String password;
  final String name;
  final String username;

  Register({
    required this.email,
    required this.password,
    required this.name,
    required this.username,
  });

  @override
  List<Object?> get props => [email, password, name, username];
}
