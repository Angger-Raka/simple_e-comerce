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
  Future<void> login(String email, String password) async {
    try {} on DioException catch (e) {
      throw e.toPrettyDescription();
    }
  }
}
