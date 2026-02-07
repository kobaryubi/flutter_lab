import 'package:camera/camera.dart';
import 'package:flutter_lab/domain/text_recognition/text_recognition_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Recognizes text from a camera image.
class RecognizeTextUseCase {
  RecognizeTextUseCase({
    required TextRecognitionGateway textRecognitionGateway,
  }) : _textRecognitionGateway = textRecognitionGateway;

  final TextRecognitionGateway _textRecognitionGateway;

  /// Processes the given [cameraImage] and returns recognized text.
  AsyncResult<String> call({
    required CameraImage cameraImage,
    required int sensorOrientation,
  }) => _textRecognitionGateway.recognizeText(
    cameraImage: cameraImage,
    sensorOrientation: sensorOrientation,
  );
}
