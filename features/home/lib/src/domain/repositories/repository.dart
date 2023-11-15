import 'package:dartz/dartz.dart';
import 'package:core/core.dart';
import 'package:home/home.dart';

mixin HomeRepository {
  Future<Either<GenericException, ResponseListProduct>> getAllProducts();
}
