part of 'authenticator_bloc.dart';

@immutable
sealed class AuthenticatorState {}

final class Unauthenticated extends AuthenticatorState {}

final class Authenticated extends AuthenticatorState {}
