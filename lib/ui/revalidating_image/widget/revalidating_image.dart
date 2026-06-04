import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/data/cache/revalidating_image_cache_manager.dart';

/// Displays a network image that revalidates its ETag on every (re)load.
///
/// Backed by [RevalidatingImageCacheManager]. On every mount it evicts its
/// in-memory copy and re-resolves, so a content swap on the server becomes
/// visible even when [url] is unchanged. Remount it (e.g. via a `ValueKey` or
/// by toggling it out of the tree while loading) to trigger a fresh
/// revalidation.
class RevalidatingImage extends HookWidget {
  const RevalidatingImage({
    required this.url,
    this.fit = BoxFit.contain,
    super.key,
  });

  /// The image URL to load.
  final Uri url;

  /// How the image should be inscribed into its box.
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    // Internal key bumped only after eviction completes, so the rebuilt
    // CachedNetworkImage re-resolves through the cache manager instead of
    // painting the decoded image straight from RAM.
    final reloadKey = useState(0);

    useEffect(() {
      // Evict the in-memory copy of [url], then bump the internal key so the
      // image re-resolves through the cache manager and revalidates its ETag.
      unawaited(() async {
        await CachedNetworkImageProvider(
          url.toString(),
          cacheManager: RevalidatingImageCacheManager(),
        ).evict();
        reloadKey.value++;
      }());

      return null;
    }, []);

    return CachedNetworkImage(
      key: ValueKey(reloadKey.value),
      imageUrl: url.toString(),
      cacheManager: RevalidatingImageCacheManager(),
      fit: fit,
    );
  }
}
