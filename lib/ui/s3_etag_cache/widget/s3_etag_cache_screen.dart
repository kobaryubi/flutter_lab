import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen to verify S3 ETag-based image caching using cached_network_image.
class S3EtagCacheScreen extends StatelessWidget {
  const S3EtagCacheScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layout(
      appBar: AppBar(title: Text('S3 ETag Cache')),
      child: _Body(),
    );
  }
}

class _Body extends HookConsumerWidget {
  const _Body();

  static const _bucketName = 'masahiko-kobayashi-flutter-lab';
  static const _region = 'ap-northeast-1';
  static const _imageKey = 'test-image.png';
  static const _imageUrl =
      'https://$_bucketName.s3.$_region.amazonaws.com/$_imageKey';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageKey = useState(UniqueKey());

    /// Clears the image cache.
    Future<void> handleClearCache() async {
      await DefaultCacheManager().removeFile(_imageUrl);
      imageKey.value = UniqueKey();
    }

    /// Reloads the image.
    void handleReload() {
      imageKey.value = UniqueKey();
    }

    return Column(
      crossAxisAlignment: .stretch,
      children: [
        _ActionButtons(
          onReload: handleReload,
          onClearCache: handleClearCache,
        ),
        Expanded(
          child: CachedNetworkImage(
            key: imageKey.value,
            imageUrl: _imageUrl,
            fit: .contain,
          ),
        ),
      ],
    );
  }
}

class _ActionButtons extends StatelessWidget {
  const _ActionButtons({
    required this.onReload,
    required this.onClearCache,
  });

  final VoidCallback onReload;
  final Future<void> Function() onClearCache;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onReload,
          child: const Text('Reload Image'),
        ),
        GestureDetector(
          onTap: onClearCache,
          child: const Text('Clear Cache'),
        ),
      ],
    );
  }
}
