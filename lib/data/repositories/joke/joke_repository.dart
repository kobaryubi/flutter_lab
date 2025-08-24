import 'package:flutter_lab/domain/models/joke/joke.dart';

abstract class JokeRepository {
  Future<Joke> fetchRandomJoke();
}
