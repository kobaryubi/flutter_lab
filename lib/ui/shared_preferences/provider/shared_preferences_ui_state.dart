import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'shared_preferences_ui_state.freezed.dart';

/// UI state for shared preferences screen.
@freezed
abstract class SharedPreferencesUiState with _$SharedPreferencesUiState {
  const factory SharedPreferencesUiState({
    required AsyncValue<DateTime>? latestAgreedDate,
  }) = _SharedPreferencesUiState;
}
