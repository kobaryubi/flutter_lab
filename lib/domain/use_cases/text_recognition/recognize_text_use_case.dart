import 'package:camera/camera.dart';
import 'package:flutter_lab/domain/text_recognition/text_recognition_repository.dart';
import 'package:result_dart/result_dart.dart';

/// Recognizes text from a camera image.
class RecognizeTextUseCase {
  RecognizeTextUseCase({
    required TextRecognitionRepository textRecognitionRepository,
  }) : _textRecognitionRepository = textRecognitionRepository;

  final TextRecognitionRepository _textRecognitionRepository;

  /// Processes the given [cameraImage] and returns recognized text.
  AsyncResult<String> call({
    required CameraImage cameraImage,
    required int sensorOrientation,
  }) => _textRecognitionRepository.recognizeText(
    cameraImage: cameraImage,
    sensorOrientation: sensorOrientation,
  );
}
