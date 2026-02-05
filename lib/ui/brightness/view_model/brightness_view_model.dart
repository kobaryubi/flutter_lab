import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/brightness/ui_state/brightness_ui_state.dart';
import 'package:result_dart/result_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'brightness_view_model.g.dart';

/// ViewModel that manages screen brightness operations.
@riverpod
class BrightnessViewModel extends _$BrightnessViewModel {
  @override
  BrightnessUiState build() {
    return const BrightnessUiState();
  }

  /// Fetches the screen brightness and updates the UI state.
  Future<void> fetchBrightness() async {
    final useCase = ref.read(getBrightnessUseCaseProvider);
    state = state.copyWith(
      brightness: await AsyncValue.guard(
        () => useCase.call().getOrThrow(),
      ),
    );
  }

  /// Sets the screen brightness to the given value.
  Future<void> setBrightness({required double brightness}) async {
    final useCase = ref.read(setBrightnessUseCaseProvider);
    await useCase.call(brightness: brightness);
  }

  /// Resets the screen brightness to the system default.
  Future<void> resetBrightness() async {
    final useCase = ref.read(resetBrightnessUseCaseProvider);
    await useCase.call();
  }
}
