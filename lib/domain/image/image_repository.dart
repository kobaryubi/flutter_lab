import 'package:flutter_lab/domain/image/s3_image_cache_result.dart';
import 'package:result_dart/result_dart.dart';

/// Repository for fetching images with ETag-based caching.
abstract class ImageRepository {
  /// Fetches an image from S3 with ETag caching support.
  ///
  /// If [cachedEtag] is provided, sends If-None-Match header.
  /// Returns cache hit (304) or cache miss with new data.
  AsyncResult<S3ImageCacheResult> fetchImage({
    required String imageKey,
    String? cachedEtag,
  });
}
