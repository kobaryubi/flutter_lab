import 'package:camera/camera.dart';
import 'package:result_dart/result_dart.dart';

/// Repository interface for text recognition from camera images.
abstract class TextRecognitionRepository {
  /// Recognizes text from a [CameraImage] captured by the camera.
  ///
  /// [sensorOrientation] is the camera sensor orientation in degrees,
  /// used to determine the correct image rotation.
  AsyncResult<String> recognizeText({
    required CameraImage cameraImage,
    required int sensorOrientation,
  });

  /// Releases resources held by the text recognizer.
  void dispose();
}
