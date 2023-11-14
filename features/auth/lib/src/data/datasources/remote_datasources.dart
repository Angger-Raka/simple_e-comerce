import 'package:auth/auth.dart';

mixin AuthDataSources {
  Future<ResponseLogin> login(RequestLogin params);
  Future<ResponseRegister> register(RequestRegister params);
  Future<bool> statusAuth();
  Future<bool> getAuth();
  Future<bool> logout();
}
