import 'package:dartz/dartz.dart';
import 'package:core/core.dart';
import 'package:home/home.dart';

class ListAddressUseCase implements UseCase<ResponseListAddress, NoParams> {
  ListAddressUseCase({
    required this.repository,
  });

  final HomeRepository repository;

  @override
  Future<Either<GenericException, ResponseListAddress>> call(
    NoParams params,
  ) async {
    return repository.getAllAddress();
  }
}
