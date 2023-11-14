import 'package:auth/auth.dart';
import 'package:core/core.dart';
import 'package:dio/dio.dart';

class AuthDataSourcesImpl implements AuthDataSources {
  AuthDataSourcesImpl(
    this.dio,
    this.preferences,
  );

  final Dio dio;
  final Preference preferences;

  @override
  Future<ResponseLogin> login(RequestLogin params) async {
    try {
      final result = await dio.post(
        '/login',
        // data: params.toJson(),
      );

      if (result.statusCode == 200) {
        return ResponseLogin();
      }
    } on DioException catch (e) {
      throw e.toPrettyDescription();
    }
    return ResponseLogin();
  }

  @override
  Future<ResponseRegister> register(RequestRegister params) async {
    try {
      final result = await dio.post(
        '/register',
        // data: params.toJson(),
      );

      if (result.statusCode == 200) {
        return ResponseRegister();
      }
    } on DioException catch (e) {
      throw e.toPrettyDescription();
    }
    return ResponseRegister();
  }

  @override
  Future<bool> statusAuth() async {
    try {
      final token = await preferences.getString(PreferenceKeys.isLogin);
      final cookieTime = await preferences.getString(PreferenceKeys.cookieTime);

      if (token != '' && cookieTime != '') {
        final time = DateTime.parse(cookieTime);
        final now = DateTime.now();
        final difference = time.isAfter(now);

        return difference;
      } else {
        return false;
      }
    } catch (e) {
      throw CacheException(e.toString());
    }
  }

  @override
  Future<bool> getAuth() async {
    return false;
  }

  @override
  Future<bool> logout() async {
    return false;
  }
}
