part of 'authenticate_bloc.dart';

@immutable
sealed class AuthenticateState {}

final class Unauthenticated extends AuthenticateState {}

final class Authenticated extends AuthenticateState {}
