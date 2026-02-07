import 'package:camera/camera.dart';
import 'package:flutter/services.dart';
import 'package:result_dart/result_dart.dart';

/// Gateway interface for text recognition from camera images.
abstract class TextRecognitionGateway {
  /// Recognizes text from a [CameraImage] captured by the camera.
  ///
  /// [sensorOrientation] is the camera sensor orientation in degrees.
  /// [deviceOrientation] is the current device orientation.
  AsyncResult<String> recognizeText({
    required CameraImage cameraImage,
    required int sensorOrientation,
    required DeviceOrientation deviceOrientation,
  });

  /// Releases resources held by the text recognizer.
  void dispose();
}
