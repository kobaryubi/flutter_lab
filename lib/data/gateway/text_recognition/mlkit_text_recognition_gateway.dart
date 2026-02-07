import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/services.dart';
import 'package:flutter_lab/domain/entity/exception/domain_exception.dart';
import 'package:flutter_lab/domain/text_recognition/text_recognition_gateway.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:result_dart/result_dart.dart';

/// Text recognition gateway implementation using Google ML Kit.
class MlkitTextRecognitionGateway implements TextRecognitionGateway {
  final TextRecognizer _textRecognizer = TextRecognizer();

  static const Map<DeviceOrientation, int> _orientations = {
    .portraitUp: 0,
    .landscapeLeft: 90,
    .portraitDown: 180,
    .landscapeRight: 270,
  };

  @override
  AsyncResult<String> recognizeText({
    required CameraImage cameraImage,
    required int sensorOrientation,
    required DeviceOrientation deviceOrientation,
  }) async {
    try {
      final inputImage = _convertCameraImage(
        cameraImage: cameraImage,
        sensorOrientation: sensorOrientation,
        deviceOrientation: deviceOrientation,
      );
      final recognizedText = await _textRecognizer.processImage(inputImage);
      return recognizedText.text.toSuccess();
    } on Exception catch (exception) {
      return exception.toFailure();
    }
  }

  @override
  void dispose() {
    _textRecognizer.close();
  }

  /// Converts a [CameraImage] to an ML Kit [InputImage].
  ///
  /// Throws [DomainException.internal] if the image format or
  /// plane count is unsupported.
  InputImage _convertCameraImage({
    required CameraImage cameraImage,
    required int sensorOrientation,
    required DeviceOrientation deviceOrientation,
  }) {
    final rotation = _getImageRotation(
      sensorOrientation: sensorOrientation,
      deviceOrientation: deviceOrientation,
    );

    final rawFormat = cameraImage.format.raw;
    if (rawFormat is! int) {
      throw const DomainException.internal();
    }
    final format =
        InputImageFormatValue.fromRawValue(
          rawFormat,
        ) ??
        (throw const DomainException.internal());

    // nv21 (Android) and bgra8888 (iOS) both have a single plane.
    if (cameraImage.planes.length != 1) {
      throw const DomainException.internal();
    }
    final plane = cameraImage.planes.first;

    return InputImage.fromBytes(
      bytes: plane.bytes,
      metadata: InputImageMetadata(
        size: Size(
          cameraImage.width.toDouble(),
          cameraImage.height.toDouble(),
        ),
        rotation: rotation, // used only in Android
        format: format, // used only in iOS
        bytesPerRow: plane.bytesPerRow, // used only in iOS
      ),
    );
  }

  /// Determines the correct image rotation for ML Kit.
  ///
  /// On iOS, uses the sensor orientation directly.
  /// On Android, compensates for device orientation (back camera).
  ///
  /// Throws [DomainException.internal] if the rotation value is
  /// unsupported.
  InputImageRotation _getImageRotation({
    required int sensorOrientation,
    required DeviceOrientation deviceOrientation,
  }) {
    if (Platform.isIOS) {
      return InputImageRotationValue.fromRawValue(sensorOrientation) ??
          (throw const DomainException.internal());
    }

    final rotationCompensation =
        _orientations[deviceOrientation] ??
        (throw const DomainException.internal());

    final adjustedRotation =
        (sensorOrientation - rotationCompensation + 360) % 360;

    return InputImageRotationValue.fromRawValue(adjustedRotation) ??
        (throw const DomainException.internal());
  }
}
