import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'future_provider_ui_state.freezed.dart';

/// UI state for the future provider injection demo screen.
@freezed
abstract class FutureProviderUiState with _$FutureProviderUiState {
  const factory FutureProviderUiState({
    AsyncValue<String>? formattedGreeting,
  }) = _FutureProviderUiState;
}
