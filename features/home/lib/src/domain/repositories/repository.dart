import 'package:dartz/dartz.dart';
import 'package:core/core.dart';
import 'package:home/home.dart';

mixin HomeRepository {
  Future<Either<GenericException, ResponseListProduct>> getAllProducts();
  Future<Either<GenericException, ResponseListCategory>> getAllCategory();
  Future<Either<GenericException, ResponseListAddress>> getAllAddress();
}
