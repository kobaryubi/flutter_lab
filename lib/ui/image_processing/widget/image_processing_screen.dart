import 'dart:typed_data';

import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:image/image.dart' as img;

/// Asset used as input to the `image` package.
const _assetPath = 'assets/images/search.png';

/// A labeled, encoded variant of the source image.
typedef _Variant = ({String label, Uint8List bytes});

/// Screen demonstrating the `image` package
/// (https://pub.dev/packages/image).
///
/// Loads a PNG asset, decodes it with `image`, produces a row of variants
/// (grayscale, flip, rotate, blur, sepia) re-encoded as PNG, and renders
/// each via [Image.memory] alongside the original.
class ImageProcessingScreen extends HookWidget {
  const ImageProcessingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final original = useState<Uint8List?>(null);
    final variants = useState<List<_Variant>>(const []);

    useEffect(() {
      /// Loads the asset, decodes it, applies a series of transforms
      /// against a shared resized base, and publishes the original
      /// plus encoded variants to local state.
      Future<void> process() async {
        final byteData = await rootBundle.load(_assetPath);
        final bytes = byteData.buffer.asUint8List();

        final decoded = img.decodePng(bytes);

        if (decoded == null) return;

        final base = img.copyResize(decoded, width: 96);
        final results = <_Variant>[
          (
            label: 'Grayscale',
            bytes: img.encodePng(img.grayscale(base.clone())),
          ),
          (
            label: 'Flip H',
            bytes: img.encodePng(img.flipHorizontal(base.clone())),
          ),
          (
            label: 'Rotate 90°',
            bytes: img.encodePng(img.copyRotate(base, angle: 90)),
          ),
          (
            label: 'Blur',
            bytes: img.encodePng(
              img.gaussianBlur(base.clone(), radius: 3),
            ),
          ),
          (
            label: 'Sepia',
            bytes: img.encodePng(img.sepia(base.clone())),
          ),
        ];

        original.value = bytes;
        variants.value = results;
      }

      process();

      return null;
    }, const []);

    return Layout(
      appBar: const AppBar(title: Text('Image Processing')),
      child: Column(
        spacing: 16,
        children: [
          const Text('Original'),
          if (original.value case final bytes?) Image.memory(bytes),

          const Text('Variants'),
          Row(
            spacing: 8,
            children: [
              for (final variant in variants.value)
                Column(
                  spacing: 4,
                  children: [
                    Image.memory(variant.bytes),
                    Text(variant.label),
                  ],
                ),
            ],
          ),
        ],
      ),
    );
  }
}
