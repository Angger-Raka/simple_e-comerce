import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DioClient {
  final Dio dio;
  late Dio client;

  DioClient(this.dio) {
    client = dio;
    client.options.baseUrl = dotenv.env['BASE_URL']!;
    client.options.connectTimeout = const Duration(seconds: 5);
    client.options.receiveTimeout = const Duration(seconds: 5);
  }
}
