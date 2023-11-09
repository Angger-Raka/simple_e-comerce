import 'package:core/constant/error_string.dart';
import 'package:equatable/equatable.dart';

class GenericException extends Equatable implements Exception {
  final String message;

  const GenericException({required this.message});

  @override
  List<Object?> get props => [message];
}

class FetchDataException extends GenericException {
  const FetchDataException([message])
      : super(
          message: ErrorString.fetchDataException,
        );
}

class BadRequestException extends GenericException {
  const BadRequestException([message])
      : super(
          message: ErrorString.badRequestException,
        );
}

class UnauthorizedException extends GenericException {
  const UnauthorizedException([message])
      : super(
          message: ErrorString.unauthorizedException,
        );
}

class NotFoundException extends GenericException {
  const NotFoundException([message])
      : super(
          message: ErrorString.notFoundException,
        );
}

class ConflictException extends GenericException {
  const ConflictException([message])
      : super(
          message: ErrorString.conflictException,
        );
}

class InternalServerErrorException extends GenericException {
  const InternalServerErrorException([message])
      : super(
          message: ErrorString.internalServerErrorException,
        );
}

class NoInternetConnectionException extends GenericException {
  const NoInternetConnectionException([message])
      : super(
          message: ErrorString.noNetworkConnectionException,
        );
}

class CacheException extends GenericException {
  const CacheException([message])
      : super(
          message: ErrorString.cacheException,
        );
}
