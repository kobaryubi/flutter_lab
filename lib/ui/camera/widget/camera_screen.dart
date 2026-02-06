import 'package:camera/camera.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/hook/use_camera_controller.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) => Layout(
    appBar: const AppBar(title: Text('camera')),
    child: Column(children: [Expanded(child: _Body())]),
  );
}

class _Body extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final cameraController = useCameraController();

    if (cameraController case AsyncData(:final value)) {
      return Center(
        child: CameraPreview(value),
      );
    }

    if (cameraController case AsyncError(:final error)) {
      return Center(
        child: Text('$error'),
      );
    }

    return const Center(
      child: Text('initializing camera...'),
    );
  }
}
