import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/firebase_performance/ui_state/firebase_performance_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_performance_view_model.g.dart';

/// ViewModel for the Firebase Performance custom code traces demo screen.
///
/// Provides methods to start/stop traces, increment metrics,
/// and set custom attributes.
@riverpod
class FirebasePerformanceViewModel extends _$FirebasePerformanceViewModel {
  @override
  FirebasePerformanceUiState build() => const FirebasePerformanceUiState();

  /// Starts a custom trace named 'sample-trace'.
  Future<void> startTrace() async {
    final useCase = ref.read(startTraceUseCaseProvider);

    final startTrace = await AsyncValue.guard(
      () async => (await useCase.call(name: 'sample-trace')).getOrThrow(),
    );

    state = state.copyWith(startTrace: startTrace);
  }

  /// Increments the 'item_count' metric on the active trace.
  Future<void> incrementMetric() async {
    final traceId = state.startTrace;

    if (traceId is! AsyncData<String>) {
      return;
    }

    final useCase = ref.read(incrementMetricUseCaseProvider);

    final incrementMetric = await AsyncValue.guard(
      () async => (await useCase.call(
        traceId: traceId.value,
        metricName: 'item_count',
        value: 1,
      )).getOrThrow(),
    );

    state = state.copyWith(incrementMetric: incrementMetric);
  }

  /// Sets the 'experiment' attribute on the active trace.
  Future<void> putAttribute() async {
    final traceId = state.startTrace;

    if (traceId is! AsyncData<String>) {
      return;
    }

    final useCase = ref.read(putAttributeUseCaseProvider);

    final putAttribute = await AsyncValue.guard(
      () async => (await useCase.call(
        traceId: traceId.value,
        attributeName: 'experiment',
        attributeValue: 'A',
      )).getOrThrow(),
    );

    state = state.copyWith(putAttribute: putAttribute);
  }

  /// Stops the active trace.
  Future<void> stopTrace() async {
    final traceId = state.startTrace;

    if (traceId is! AsyncData<String>) {
      return;
    }

    final useCase = ref.read(stopTraceUseCaseProvider);

    final stopTrace = await AsyncValue.guard(
      () async => (await useCase.call(traceId: traceId.value)).getOrThrow(),
    );

    state = state.copyWith(stopTrace: stopTrace);
  }
}
