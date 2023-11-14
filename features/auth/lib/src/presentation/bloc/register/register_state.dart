part of 'register_bloc.dart';

@immutable
sealed class RegisterState extends Equatable {}

final class RegisterInitial extends RegisterState {
  @override
  List<Object?> get props => [];
}

final class RegisterLoading extends RegisterState {
  @override
  List<Object?> get props => [];
}

final class RegisterSuccess extends RegisterState {
  @override
  List<Object?> get props => [];
}

final class RegisterFailure extends RegisterState {
  final String message;

  RegisterFailure({required this.message});

  @override
  List<Object?> get props => [message];
}
