import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_lab/domain/models/joke/joke.dart';
import 'package:flutter_lab/ui/riverpod/view_models/riverpod_random_joke_ui_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'riverpod_random_joke_view_model.g.dart';

/// Dio instance for making API calls.
final dio = Dio();

/// Fetch a random joke from the API.
Future<Joke> fetchRandomJoke() async {
  final response = await dio.get<Map<String, Object?>>(
    'https://official-joke-api.appspot.com/random_joke',
  );

  return Joke.fromJson(response.data!);
}

/// Riverpod provider for fetching a random joke.
@riverpod
Future<Joke> randomJoke(Ref ref) async {
  return fetchRandomJoke();
}

/// ViewModel for managing random jokes.
@riverpod
final class RiverpodRandomJokeViewModel extends _$RiverpodRandomJokeViewModel {
  @override
  RiverpodRandomJokeUiState build(
    _,
    WidgetRef ref,
  ) {
    final randomJoke = ref.watch(randomJokeProvider);

    return RiverpodRandomJokeUiState(
      randomJoke: randomJoke,
    );
  }
}
