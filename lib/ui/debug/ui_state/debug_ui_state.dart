import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'debug_ui_state.freezed.dart';

/// UI state for the DebugScreen.
@freezed
abstract class DebugUiState with _$DebugUiState {
  const factory DebugUiState({
    /// Entries read from SharedPreferences, keyed by declared key.
    AsyncValue<Map<String, Object>>? localEntries,

    /// Entries read from FlutterSecureStorage, keyed by declared key.
    AsyncValue<Map<String, String>>? secureEntries,
  }) = _DebugUiState;
}
