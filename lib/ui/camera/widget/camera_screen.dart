import 'package:camera/camera.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/hook/use_camera_manager.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBar: const AppBar(title: Text('camera')),
      child: Column(children: [Expanded(child: _Body())]),
    );
  }
}

class _Body extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final cameraManager = useCameraManager();

    final controller = cameraManager.cameraController;

    if (cameraManager.camera == null || controller == null) {
      return const Center(
        child: Text('no camera found'),
      );
    }

    if (cameraManager.isInitializedSnapshot.connectionState ==
        ConnectionState.waiting) {
      return const Center(
        child: Text('initializing camera...'),
      );
    }

    return Center(
      child: CameraPreview(controller),
    );
  }
}
