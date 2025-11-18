import 'dart:async';

import 'package:camera/camera.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CameraManager {
  CameraManager({
    required this.camera,
    required this.cameraController,
    required this.isInitializedSnapshot,
  });

  final CameraDescription? camera;
  final CameraController? cameraController;
  final AsyncSnapshot<void> isInitializedSnapshot;
}

CameraManager useCameraManager() {
  /// カメラの状態
  final cameraState = useState<CameraDescription?>(null);

  /// カメラコントローラー
  final cameraController = useMemoized<CameraController?>(() {
    final camera = cameraState.value;
    if (camera == null) {
      return null;
    }

    return CameraController(
      camera,
      ResolutionPreset.high,
      enableAudio: false,
    );
  }, [cameraState.value]);

  /// カメラコントローラーが初期化済みかどうか
  final isInitializedFuture = useMemoized(() {
    if (cameraController == null) {
      return null;
    }

    return cameraController.initialize();
  }, [cameraController]);
  final isInitializedSnapshot = useFuture(isInitializedFuture);

  /// 利用可能なカメラの一覧取得をする副作用
  useEffect(() {
    unawaited(
      (() async {
        final cameras = await availableCameras();
        cameraState.value = cameras.isEmpty ? null : cameras.first;
      })(),
    );

    return null;
  }, []);

  /// カメラコントローラーの破棄をする副作用
  useEffect(() {
    return () {
      cameraController?.dispose();
    };
  }, [cameraController]);

  return CameraManager(
    camera: cameraState.value,
    cameraController: cameraController,
    isInitializedSnapshot: isInitializedSnapshot,
  );
}
