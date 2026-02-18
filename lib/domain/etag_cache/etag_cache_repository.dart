import 'package:flutter_lab/domain/entity/etag_cache/etag_cached_response.dart';
import 'package:result_dart/result_dart.dart';

/// Repository interface for ETag-based HTTP caching operations.
abstract class EtagCacheRepository {
  /// Fetches products from the endpoint that includes an ETag header.
  AsyncResult<EtagCachedResponse> fetchWithEtag();

  /// Fetches products from the endpoint that does not include an ETag header.
  AsyncResult<EtagCachedResponse> fetchWithoutEtag();

  /// Clears the cache store.
  AsyncResult<Unit> clearCache();
}
