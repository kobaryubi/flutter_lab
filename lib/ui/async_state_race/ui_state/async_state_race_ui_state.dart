import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'async_state_race_ui_state.freezed.dart';

/// UI state for the async state race condition demo screen.
@freezed
abstract class AsyncStateRaceUiState with _$AsyncStateRaceUiState {
  const factory AsyncStateRaceUiState({
    AsyncValue<String>? fetchA,
    AsyncValue<String>? fetchB,
    AsyncValue<String>? fetchC,
  }) = _AsyncStateRaceUiState;
}
