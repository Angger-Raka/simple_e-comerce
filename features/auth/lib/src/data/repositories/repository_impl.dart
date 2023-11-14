import 'package:auth/auth.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this.datasources);

  final AuthDataSources datasources;

  @override
  Future<Either<GenericException, ResponseLogin>> login(
    RequestLogin params,
  ) async {
    try {
      final result = await datasources.login(params);
      return Right(result);
    } on GenericException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<GenericException, ResponseRegister>> register(
    RequestRegister params,
  ) async {
    try {
      final result = await datasources.register(params);
      return Right(result);
    } on GenericException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<GenericException, bool>> statusAuth() async {
    try {
      final result = await datasources.statusAuth();
      return Right(result);
    } on GenericException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<GenericException, bool>> getAuth() async {
    try {
      final result = await datasources.getAuth();
      return Right(result);
    } on GenericException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<GenericException, bool>> logout() async {
    try {
      final result = await datasources.logout();
      return Right(result);
    } on GenericException catch (e) {
      return Left(e);
    }
  }
}
