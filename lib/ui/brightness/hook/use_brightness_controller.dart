import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:screen_brightness/screen_brightness.dart';

/// State returned by [useBrightnessController] hook.
class UseBrightnessState {
  const UseBrightnessState({
    required this.resetBrightness,
    required this.maxBrightness,
  });

  /// Resets the screen brightness to the system default.
  final void Function() resetBrightness;

  /// Sets the screen brightness to the maximum value.
  final void Function() maxBrightness;
}

/// Hook that manages screen brightness operations.
///
/// Uses [ScreenBrightness] directly to max and reset brightness.
UseBrightnessState useBrightnessController() {
  final screenBrightness = useMemoized(ScreenBrightness.new, []);

  /// Resets the brightness to the system default.
  Future<void> handleResetBrightness() async {
    await screenBrightness.resetApplicationScreenBrightness();
  }

  /// Sets the brightness to the maximum value.
  Future<void> handleMaxBrightness() async {
    await screenBrightness.setApplicationScreenBrightness(1);
  }

  return UseBrightnessState(
    resetBrightness: handleResetBrightness,
    maxBrightness: handleMaxBrightness,
  );
}
