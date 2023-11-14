import 'package:auth/auth.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';

class StatusAuthUseCase implements UseCase<bool, NoParams> {
  StatusAuthUseCase(this.repository);

  final AuthRepository repository;

  @override
  Future<Either<GenericException, bool>> call(NoParams params) async {
    return await repository.statusAuth();
  }
}
