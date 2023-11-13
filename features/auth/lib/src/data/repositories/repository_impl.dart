import 'package:auth/auth.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this.datasources);

  final AuthDataSources datasources;

  // @override
  // Future<Either<Exception, String>> login(String email, String password) {}
}
