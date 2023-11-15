part of 'login_bloc.dart';

@immutable
sealed class LoginState extends Equatable {}

final class LoginInitial extends LoginState {
  @override
  List<Object?> get props => [];
}

final class LoginLoading extends LoginState {
  @override
  List<Object?> get props => [];
}

final class LoginSuccess extends LoginState {
  LoginSuccess(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}

final class LoginFailure extends LoginState {
  final String message;

  LoginFailure(this.message);

  @override
  List<Object?> get props => [message];
}
