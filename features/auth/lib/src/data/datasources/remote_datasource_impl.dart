import 'package:auth/auth.dart';
import 'package:core/core.dart';
import 'package:dio/dio.dart';

class AuthRemoteDataSourcesImpl implements AuthRemoteDataSources {
  AuthRemoteDataSourcesImpl(
    this._dio,
    this._prefs,
  );

  final Dio _dio;
  final Preference _prefs;

  @override
  Future<ResponseLogin> login(RequestLogin params) async {
    try {
      final result = await _dio.post(
        '/auth/local',
        data: params.toJson(),
      );

      if (result.statusCode == 200) {
        final time = DateTime.now().add(
          const Duration(hours: 1),
        );
        _prefs.setString(
          PreferenceKeys.cookieTime,
          time.toString(),
        );
      }
      return ResponseLogin.fromJson(result.data);
    } on DioException catch (e) {
      throw e.toPrettyDescription();
    }
  }

  @override
  Future<ResponseRegister> register(RequestRegister params) async {
    try {
      final result = await _dio.post(
        '/register',
        data: params.toJson(),
      );

      return ResponseRegister.fromJson(result.data);
    } on DioException catch (e) {
      throw e.toPrettyDescription();
    }
  }

  @override
  Future<bool> statusAuth() async {
    try {
      final token = await _prefs.getString(PreferenceKeys.isLogin);
      final cookieTime = await _prefs.getString(PreferenceKeys.cookieTime);

      if (token != '' && cookieTime != '') {
        final time = DateTime.parse(cookieTime);
        final now = DateTime.now();
        final result = time.isBefore(now);

        return result;
      } else {
        return false;
      }
    } catch (e) {
      throw CacheException(e.toString());
    }
  }

  @override
  Future<bool> logout() async {
    try {
      await _prefs.remove(PreferenceKeys.isLogin);
      await _prefs.remove(PreferenceKeys.cookieTime);
      return true;
    } catch (e) {
      throw CacheException(e.toString());
    }
  }
}
