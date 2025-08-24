import 'package:dio/dio.dart';
import 'package:flutter_lab/data/services/dio/model/joke/joke_api_model.dart';

class DioClient {
  DioClient({required Dio dio}) : _dio = dio;

  final Dio _dio;

  Future<JokeApiModel> fetchRandomJoke() async {
    final response = await _dio.get<Map<String, Object?>>(
      'https://official-joke-api.appspot.com/random_joke',
    );
    final data = response.data;
    if (response.statusCode != 200 || data == null) {
      throw Exception('Failed to load joke');
    }

    return JokeApiModel.fromJson(data);
  }
}
