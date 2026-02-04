import 'dart:developer';

import 'package:flutter_lab/domain/brightness/brightness_repository.dart';
import 'package:result_dart/result_dart.dart';
import 'package:screen_brightness/screen_brightness.dart';

/// [BrightnessRepository] implementation using `screen_brightness` plugin.
class ScreenBrightnessRepository implements BrightnessRepository {
  /// Creates a [ScreenBrightnessRepository].
  ScreenBrightnessRepository({
    required ScreenBrightness screenBrightness,
  }) : _screenBrightness = screenBrightness;

  final ScreenBrightness _screenBrightness;

  @override
  AsyncResult<double> getCurrentBrightness() async {
    try {
      final brightness = await _screenBrightness.application;
      log('getCurrentBrightness: $brightness', name: 'Brightness');
      return brightness.toSuccess();
    } on Exception catch (exception) {
      log('getCurrentBrightness failed: $exception', name: 'Brightness');
      return exception.toFailure();
    }
  }

  @override
  AsyncResult<Unit> setBrightness({required double brightness}) async {
    log('setBrightness: $brightness', name: 'Brightness');
    try {
      await _screenBrightness.setApplicationScreenBrightness(brightness);
      log('setBrightness succeeded', name: 'Brightness');
      return const Success(unit);
    } on Exception catch (exception) {
      log('setBrightness failed: $exception', name: 'Brightness');
      return exception.toFailure();
    }
  }

  @override
  AsyncResult<Unit> resetBrightness() async {
    log('resetBrightness', name: 'Brightness');
    try {
      await _screenBrightness.resetApplicationScreenBrightness();
      log('resetBrightness succeeded', name: 'Brightness');
      return const Success(unit);
    } on Exception catch (exception) {
      log('resetBrightness failed: $exception', name: 'Brightness');
      return exception.toFailure();
    }
  }
}
