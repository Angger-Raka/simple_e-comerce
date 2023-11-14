import 'package:auth/auth.dart';
import 'package:dartz/dartz.dart';
import 'package:core/core.dart';

class LogoutUseCase implements UseCase<bool, NoParams> {
  LogoutUseCase(this.repository);

  final AuthRepository repository;

  @override
  Future<Either<GenericException, bool>> call(NoParams params) async {
    return await repository.logout();
  }
}
