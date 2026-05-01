import 'package:camera/camera.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/hook/use_camera_controller.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen that shows the live camera preview cropped to a centered square.
class CameraScreen extends HookWidget {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cameraController = useCameraController();

    return Layout(
      appBar: const AppBar(title: Text('Camera')),
      child: switch (cameraController) {
        AsyncData(:final value) => _SquarePreview(controller: value),
        AsyncError(:final error) => Center(child: Text('$error')),
        _ => const Center(child: Text('initializing camera...')),
      },
    );
  }
}

/// Renders [controller]'s preview cropped to a centered square via
/// [BoxFit.cover], preserving the sensor's native aspect ratio.
class _SquarePreview extends StatelessWidget {
  const _SquarePreview({required this.controller});

  final CameraController controller;

  @override
  Widget build(BuildContext context) {
    final previewSize = controller.value.previewSize;

    if (previewSize == null) {
      return const Center(child: Text('preview size unavailable'));
    }

    return Center(
      child: AspectRatio(
        aspectRatio: 1,
        child: ClipRect(
          child: FittedBox(
            fit: .cover,
            // The sensor reports its size in landscape; swap width/height
            // so the box matches the preview's portrait display orientation.
            child: SizedBox(
              width: previewSize.height,
              height: previewSize.width,
              child: CameraPreview(controller),
            ),
          ),
        ),
      ),
    );
  }
}
