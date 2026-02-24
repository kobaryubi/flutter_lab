import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'pigeon_ui_state.freezed.dart';

/// UI state for the Pigeon demo screen.
@freezed
abstract class PigeonUiState with _$PigeonUiState {
  const factory PigeonUiState({
    /// Greeting result from GreetingApi.greet.
    AsyncValue<String>? greeting,

    /// Host language from ExampleHostApi.getHostLanguage.
    AsyncValue<String>? hostLanguage,

    /// Addition result from ExampleHostApi.add.
    AsyncValue<int>? addResult,

    /// Send message result from ExampleHostApi.sendMessage.
    AsyncValue<bool>? sendMessageResult,

    /// Flutter method callback result from MessageFlutterApi.
    AsyncValue<String>? flutterMethodResult,
  }) = _PigeonUiState;
}
