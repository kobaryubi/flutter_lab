import 'package:camera/camera.dart';
import 'package:flutter/services.dart';
import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/ocr/ui_state/ocr_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ocr_view_model.g.dart';

/// ViewModel that manages OCR text recognition from camera frames.
@riverpod
class OcrViewModel extends _$OcrViewModel {
  @override
  OcrUiState build() => const OcrUiState();

  /// Processes a single camera frame and updates the recognized text.
  Future<void> processFrame({
    required CameraImage cameraImage,
    required int sensorOrientation,
    required DeviceOrientation deviceOrientation,
    required CameraLensDirection lensDirection,
  }) async {
    final useCase = ref.read(recognizeTextUseCaseProvider);
    state = state.copyWith(
      recognizedText: await AsyncValue.guard(
        () async => (await useCase.call(
          cameraImage: cameraImage,
          sensorOrientation: sensorOrientation,
          deviceOrientation: deviceOrientation,
          lensDirection: lensDirection,
        )).getOrThrow(),
      ),
    );
  }
}
