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
  RegisterSuccess(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}

final class RegisterFailure extends RegisterState {
  final String message;

  RegisterFailure(this.message);

  @override
  List<Object?> get props => [message];
}
