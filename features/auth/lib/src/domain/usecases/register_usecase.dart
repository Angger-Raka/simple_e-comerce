import 'package:auth/auth.dart';
import 'package:dartz/dartz.dart';
import 'package:core/core.dart';

class RegisterUseCase implements UseCase<ResponseRegister, RequestRegister> {
  RegisterUseCase(this.repository);

  final AuthRepository repository;

  @override
  Future<Either<GenericException, ResponseRegister>> call(
    RequestRegister params,
  ) async {
    return await repository.register(
      params,
    );
  }
}
