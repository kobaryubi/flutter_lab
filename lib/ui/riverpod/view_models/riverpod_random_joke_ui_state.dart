import 'package:flutter_lab/domain/models/joke/joke.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'riverpod_random_joke_ui_state.freezed.dart';

/// UI state for the random joke feature.
@freezed
abstract class RiverpodRandomJokeUiState with _$RiverpodRandomJokeUiState {
  /// Create a new instance of [RiverpodRandomJokeUiState].
  const factory RiverpodRandomJokeUiState({
    required AsyncValue<Joke> randomJoke,
  }) = _RiverpodRandomJokeUiState;
}
