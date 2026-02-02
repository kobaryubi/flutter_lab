import 'package:flutter_lab/domain/entity/http_cache/cached_response.dart';
import 'package:result_dart/result_dart.dart';

/// Repository interface for fetching data with HTTP cache support.
abstract class HttpCacheRepository {
  /// Sends a GET request and returns the response with cache info.
  AsyncResult<CachedResponse> fetch();

  /// Clears the cache store.
  AsyncResult<Unit> clearCache();
}
