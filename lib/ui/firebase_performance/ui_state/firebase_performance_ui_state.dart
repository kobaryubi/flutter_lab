import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:result_dart/result_dart.dart';

part 'firebase_performance_ui_state.freezed.dart';

/// UI state for the Firebase Performance custom code traces demo screen.
@freezed
abstract class FirebasePerformanceUiState with _$FirebasePerformanceUiState {
  const factory FirebasePerformanceUiState({
    /// Result of starting a trace.
    AsyncValue<String>? startTrace,

    /// Result of stopping a trace.
    AsyncValue<Unit>? stopTrace,

    /// Result of incrementing a metric.
    AsyncValue<Unit>? incrementMetric,

    /// Result of putting an attribute.
    AsyncValue<Unit>? putAttribute,
  }) = _FirebasePerformanceUiState;
}
