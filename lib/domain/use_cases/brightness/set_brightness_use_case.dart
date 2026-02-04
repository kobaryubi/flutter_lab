import 'package:flutter_lab/domain/brightness/brightness_repository.dart';
import 'package:result_dart/result_dart.dart';

/// Sets the application screen brightness.
class SetBrightnessUseCase {
  SetBrightnessUseCase({
    required BrightnessRepository brightnessRepository,
  }) : _brightnessRepository = brightnessRepository;

  final BrightnessRepository _brightnessRepository;

  /// Sets the brightness to the given value between 0.0 and 1.0.
  AsyncResult<Unit> call({required double brightness}) {
    return _brightnessRepository.setBrightness(brightness: brightness);
  }
}
