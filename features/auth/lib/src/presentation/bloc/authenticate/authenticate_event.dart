part of 'authenticate_bloc.dart';

@immutable
sealed class AuthenticateEvent {}

class GetAuthenticated extends AuthenticateEvent {}
