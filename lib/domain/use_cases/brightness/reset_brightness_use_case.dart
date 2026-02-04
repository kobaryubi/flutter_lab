import 'package:flutter_lab/domain/brightness/brightness_repository.dart';
import 'package:result_dart/result_dart.dart';

/// Resets the application screen brightness to the system default.
class ResetBrightnessUseCase {
  ResetBrightnessUseCase({
    required BrightnessRepository brightnessRepository,
  }) : _brightnessRepository = brightnessRepository;

  final BrightnessRepository _brightnessRepository;

  /// Resets the brightness to the system default.
  AsyncResult<Unit> call() {
    return _brightnessRepository.resetBrightness();
  }
}
