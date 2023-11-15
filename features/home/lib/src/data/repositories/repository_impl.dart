import 'package:home/home.dart';
import 'package:dartz/dartz.dart';
import 'package:core/core.dart';

class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(
    this._homeDataSource,
  );

  final HomeDataSource _homeDataSource;

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
}
