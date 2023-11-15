import 'package:home/home.dart';
import 'package:dartz/dartz.dart';
import 'package:core/core.dart';

class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(
    this._homeDataSource,
  );

  final HomeDataSource _homeDataSource;

  @override
  Future<Either<GenericException, ResponseListProduct>> getAllProducts() async {
    try {
      final result = await _homeDataSource.getAllProducts();
      return Right(result);
    } on GenericException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(
        GenericException(message: e.toString()),
      );
    }
  }

  @override
  Future<Either<GenericException, ResponseListCategory>>
      getAllCategory() async {
    try {
      final result = await _homeDataSource.getAllCategories();
      return Right(result);
    } on GenericException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(
        GenericException(message: e.toString()),
      );
    }
  }

  @override
  Future<Either<GenericException, ResponseListAddress>> getAllAddress() async {
    try {
      final result = await _homeDataSource.getAllAddress();
      return Right(result);
    } on GenericException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(
        GenericException(message: e.toString()),
      );
    }
  }
}
