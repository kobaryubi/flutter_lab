import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Hook that discovers cameras, creates and initializes a [CameraController].
///
/// Returns [AsyncLoading] while discovering cameras and initializing,
/// [AsyncData] with the ready controller, or [AsyncError] on failure.
AsyncValue<CameraController> useCameraController() {
  final controllerState = useState<AsyncValue<CameraController>>(
    const AsyncLoading(),
  );

  /// Discovers available cameras, initializes the first one, and disposes
  /// the controller on cleanup.
  useEffect(
    () {
      CameraController? controller;

      Future<void> initialize() async {
        controllerState.value = await AsyncValue.guard(() async {
          final cameras = await availableCameras();
          if (cameras.isEmpty) {
            throw Exception('No camera found');
          }

          // Uses the first camera, which is typically the back camera.
          final newController = CameraController(
            cameras.first,
            .high,
            enableAudio: false,
            imageFormatGroup: Platform.isAndroid ? .nv21 : .bgra8888,
          );
          controller = newController;

          await newController.initialize();
          return newController;
        });
      }

      initialize();

      return () => controller?.dispose();
    },
    [],
  );

  return controllerState.value;
}
