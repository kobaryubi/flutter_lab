import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 's3_image_cache_result.freezed.dart';

/// Result of fetching an S3 image with ETag caching.
@freezed
abstract class S3ImageCacheResult with _$S3ImageCacheResult {
  /// Cache hit - image was not modified (304 response).
  const factory S3ImageCacheResult.cacheHit({
    required String etag,
  }) = S3ImageCacheResultCacheHit;

  /// Cache miss - new image data fetched.
  const factory S3ImageCacheResult.cacheMiss({
    required String etag,
    required Uint8List imageData,
  }) = S3ImageCacheResultCacheMiss;
}
