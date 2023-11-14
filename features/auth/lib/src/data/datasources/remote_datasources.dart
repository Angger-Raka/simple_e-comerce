import 'package:auth/auth.dart';

mixin AuthRemoteDataSources {
  Future<ResponseLogin> login(RequestLogin params);
  Future<ResponseRegister> register(RequestRegister params);
  Future<bool> statusAuth();
  Future<bool> logout();
}
