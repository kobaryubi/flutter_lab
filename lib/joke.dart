import 'package:dio/dio.dart';
import 'package:flutter_lab/domain/models/joke/joke.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dio = Dio();

Future<Joke> fetchRandomJoke() async {
  final response = await dio.get<Map<String, Object?>>(
    'https://official-joke-api.appspot.com/random_joke',
  );

  return Joke.fromJson(response.data!);
}

final randomJokeProvider = FutureProvider<Joke>((ref) async {
  return fetchRandomJoke();
});
