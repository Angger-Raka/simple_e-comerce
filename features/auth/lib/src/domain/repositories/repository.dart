import 'package:auth/auth.dart';
import 'package:dartz/dartz.dart';
import 'package:core/core.dart';

mixin AuthRepository {
  Future<Either<GenericException, ResponseLogin>> login(
    RequestLogin params,
  );
  Future<Either<GenericException, ResponseRegister>> register(
    RequestRegister params,
  );
  Future<Either<GenericException, bool>> statusAuth();
  Future<Either<GenericException, bool>> getAuth();
  Future<Either<GenericException, bool>> logout();
}
