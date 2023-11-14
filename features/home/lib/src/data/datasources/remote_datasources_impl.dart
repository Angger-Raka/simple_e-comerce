import 'package:core/core.dart';
import 'package:home/home.dart';
import 'package:dio/dio.dart';

class HomeDataSourceImpl implements HomeDataSource {
  HomeDataSourceImpl(
    this._dio,
    this._prefs,
  );

  final Dio _dio;
  final Preference _prefs;
}
