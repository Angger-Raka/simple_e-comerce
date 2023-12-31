import 'package:dartz/dartz.dart';
import 'package:core/core.dart';
import 'package:home/home.dart';

class ListProductUseCase implements UseCase<ResponseListProduct, NoParams> {
  ListProductUseCase({
    required this.repository,
  });

  final HomeRepository repository;

  @override
  Future<Either<GenericException, ResponseListProduct>> call(
    NoParams params,
  ) async {
    return repository.getAllProducts();
  }
}
