part of 'authenticator_bloc.dart';

@immutable
sealed class AuthenticatorEvent {}

class AuthenticatorInit extends AuthenticatorEvent {}
