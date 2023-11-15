import 'package:auth/auth.dart';
import 'package:dartz/dartz.dart';
import 'package:core/core.dart';

class LoginUseCase implements UseCase<ResponseLogin, RequestLogin> {
  LoginUseCase(this.repository);

  final AuthRepository repository;

  @override
  Future<Either<GenericException, ResponseLogin>> call(
    RequestLogin params,
  ) async {
    return await repository.login(
      params,
    );
  }
}
