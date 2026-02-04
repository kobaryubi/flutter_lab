import 'package:flutter_lab/domain/brightness/brightness_repository.dart';
import 'package:result_dart/result_dart.dart';

/// Gets the current screen brightness.
class GetBrightnessUseCase {
  GetBrightnessUseCase({
    required BrightnessRepository brightnessRepository,
  }) : _brightnessRepository = brightnessRepository;

  final BrightnessRepository _brightnessRepository;

  /// Returns the current brightness as a value between 0.0 and 1.0.
  AsyncResult<double> call() {
    return _brightnessRepository.getCurrentBrightness();
  }
}
