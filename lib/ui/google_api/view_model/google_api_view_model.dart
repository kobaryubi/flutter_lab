import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/google_api/ui_state/google_api_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'google_api_view_model.g.dart';

/// ViewModel for the Google API availability screen.
@riverpod
class GoogleApiViewModel extends _$GoogleApiViewModel {
  @override
  GoogleApiUiState build() =>
      const GoogleApiUiState(availability: AsyncValue.loading());

  /// Checks Google Play Services availability and updates the UI state.
  Future<void> checkAvailability() async {
    final useCase = ref.read(checkGoogleApiAvailabilityUseCaseProvider);

    final availability = await AsyncValue.guard(() async {
      final result = await useCase.call();
      return result.getOrThrow();
    });

    state = state.copyWith(availability: availability);
  }
}
