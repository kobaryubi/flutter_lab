import 'package:dio/dio.dart';

class DioClient {
  DioClient({required Dio dio}) : _dio = dio;

  final Dio _dio;
}
