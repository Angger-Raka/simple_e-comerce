import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:order/order.dart';

class OrderDataSourcesImpl implements OrderDataSources {
  OrderDataSourcesImpl(
    this._dio,
    this._prefers,
  );

  final Dio _dio;
  final Preference _prefers;
}
