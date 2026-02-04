import 'package:result_dart/result_dart.dart';

/// Repository interface for controlling screen brightness.
abstract class BrightnessRepository {
  /// Returns the current screen brightness as a value between 0.0 and 1.0.
  AsyncResult<double> getBrightness();

  /// Sets the application screen brightness to the given value.
  AsyncResult<Unit> setBrightness({required double brightness});

  /// Resets the application screen brightness to the system default.
  AsyncResult<Unit> resetBrightness();
}
