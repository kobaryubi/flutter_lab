import 'package:camera/camera.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/hook/use_camera_controller.dart';
import 'package:flutter_lab/hook/use_route_aware.dart';
import 'package:flutter_lab/routing/route_observer.dart';
import 'package:flutter_lab/routing/router.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/ocr/view_model/ocr_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen that displays a camera preview with real-time OCR text recognition.
class OcrScreen extends StatelessWidget {
  const OcrScreen({super.key});

  @override
  Widget build(BuildContext context) => Layout(
    appBar: const AppBar(title: Text('OCR')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cameraController = useCameraController();
    final uiState = ref.watch(ocrViewModelProvider);
    final appLifecycleState = useAppLifecycleState();
    final isCurrentRoute = useState(true);
    final processingRef = useRef(false);
    final navigatedRef = useRef(false);
    final isTorchOn = useState(false);

    /// Marks the route as no longer visible when another route is pushed.
    void handlePushNext() => isCurrentRoute.value = false;

    /// Marks the route as visible again when the pushed route is popped.
    void handlePopNext() => isCurrentRoute.value = true;

    useRouteAware(
      ref.read(routeObserverProvider),
      didPushNext: handlePushNext,
      didPopNext: handlePopNext,
    );

    /// Navigates to the result screen when non-empty text is detected.
    ref.listen(ocrViewModelProvider, (previous, next) {
      if (navigatedRef.value) return;
      if (next.recognizedText case AsyncData(
        value: final text,
      ) when text.isNotEmpty) {
        navigatedRef.value = true;
        OcrResultRoute(text: text).push<void>(context);
      }
    });

    /// Toggles the camera flashlight on or off.
    void handleToggleTorch() {
      if (cameraController case AsyncData(:final value)) {
        final newMode = isTorchOn.value ? FlashMode.off : FlashMode.torch;
        value.setFlashMode(newMode);
        isTorchOn.value = !isTorchOn.value;
      }
    }

    /// Handles each camera frame for text recognition.
    void handleImageFrame(CameraImage cameraImage) {
      if (navigatedRef.value) return;
      if (processingRef.value) return;
      processingRef.value = true;

      if (cameraController case AsyncData(:final value)) {
        ref
            .read(ocrViewModelProvider.notifier)
            .processFrame(
              cameraImage: cameraImage,
              sensorOrientation: value.description.sensorOrientation,
              deviceOrientation: value.value.deviceOrientation,
            )
            .whenComplete(() => processingRef.value = false);
      }
    }

    useEffect(
      () {
        if (!isCurrentRoute.value) return null;
        if (appLifecycleState != AppLifecycleState.resumed) return null;
        if (cameraController case AsyncData(:final value)) {
          value.startImageStream(handleImageFrame);
          return value.stopImageStream;
        }
        return null;
      },
      [cameraController is AsyncData, appLifecycleState, isCurrentRoute.value],
    );

    if (cameraController case AsyncData(:final value)) {
      return Column(
        children: [
          Expanded(
            child: Center(child: CameraPreview(value)),
          ),
          GestureDetector(
            onTap: handleToggleTorch,
            child: Text(isTorchOn.value ? 'Torch: ON' : 'Torch: OFF'),
          ),
          _buildRecognizedText(uiState.recognizedText),
        ],
      );
    }

    if (cameraController case AsyncError(:final error)) {
      return Center(child: Text('$error'));
    }

    return const Center(child: Text('initializing camera...'));
  }

  /// Builds the recognized text display widget.
  Widget _buildRecognizedText(AsyncValue<String>? recognizedText) {
    if (recognizedText case AsyncData(:final value)) {
      return Text(value.isEmpty ? 'No text detected' : value);
    }

    if (recognizedText case AsyncError(:final error)) {
      return Text('Recognition error: $error');
    }

    return const Text('Waiting for text...');
  }
}
