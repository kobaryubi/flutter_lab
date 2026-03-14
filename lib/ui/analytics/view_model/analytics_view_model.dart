import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/analytics/ui_state/analytics_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'analytics_view_model.g.dart';

/// ViewModel for the Firebase Analytics demo screen.
///
/// Provides methods to set default parameters and log custom events.
@riverpod
class AnalyticsViewModel extends _$AnalyticsViewModel {
  @override
  AnalyticsUiState build() => const AnalyticsUiState();

  /// Sets default event parameters for all future events.
  Future<void> setDefaultParameters() async {
    final useCase = ref.read(setDefaultEventParametersUseCaseProvider);

    final setDefaultParameters = await AsyncValue.guard(
      () async => (await useCase.call(
        parameters: {
          'app_version': '1.0.0',
          'environment': 'local',
        },
      )).getOrThrow(),
    );

    state = state.copyWith(
      setDefaultParameters: setDefaultParameters,
    );
  }

  /// Logs a custom analytics event.
  Future<void> logEvent() async {
    final useCase = ref.read(logEventUseCaseProvider);

    final logEvent = await AsyncValue.guard(
      () async => (await useCase.call(
        name: 'test_button_tapped',
        parameters: {
          'screen': 'analytics',
          'timestamp': DateTime.now().toIso8601String(),
        },
      )).getOrThrow(),
    );

    state = state.copyWith(logEvent: logEvent);
  }
}
