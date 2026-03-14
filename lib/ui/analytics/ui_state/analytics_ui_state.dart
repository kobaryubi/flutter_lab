import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:result_dart/result_dart.dart';

part 'analytics_ui_state.freezed.dart';

/// UI state for the Firebase Analytics demo screen.
@freezed
abstract class AnalyticsUiState with _$AnalyticsUiState {
  const factory AnalyticsUiState({
    /// Result of setting default event parameters.
    AsyncValue<Unit>? setDefaultParameters,

    /// Result of logging a custom event.
    AsyncValue<Unit>? logEvent,
  }) = _AnalyticsUiState;
}
