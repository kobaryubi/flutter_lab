import 'package:flutter_lab/data/repositories/joke/joke_repository.dart';
import 'package:flutter_lab/data/services/dio/dio_client.dart';
import 'package:flutter_lab/domain/models/joke/joke.dart';

class JokeRepositoryRemote implements JokeRepository {
  JokeRepositoryRemote({required DioClient dioClient}) : _dioClient = dioClient;

  final DioClient _dioClient;

  @override
  Future<Joke> fetchRandomJoke() async {
    final jokeApiModel = await _dioClient.fetchRandomJoke();

    return Joke(
      type: jokeApiModel.type,
      setup: jokeApiModel.setup,
      punchline: jokeApiModel.punchline,
      id: jokeApiModel.id,
    );
  }
}
