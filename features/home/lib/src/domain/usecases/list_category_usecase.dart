import 'package:dartz/dartz.dart';
import 'package:core/core.dart';
import 'package:home/home.dart';

class ListCategoryUseCase implements UseCase<ResponseListCategory, NoParams> {
  ListCategoryUseCase({
    required this.repository,
  });

  final HomeRepository repository;

  @override
  Future<Either<GenericException, ResponseListCategory>> call(
    NoParams params,
  ) async {
    return repository.getAllCategory();
  }
}
