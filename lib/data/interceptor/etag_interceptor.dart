import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';

/// Dio interceptor that adds `If-None-Match` headers from the [CacheStore].
///
/// Reads the cached ETag value from the shared [CacheStore] used by
/// [DioCacheInterceptor] and adds the `If-None-Match` header to outgoing
/// requests so the server can return 304 Not Modified.
class EtagInterceptor extends Interceptor {
  /// Creates an [EtagInterceptor] with default [CacheOptions] for key building.
  EtagInterceptor({
    required CacheStore store,
  }) : _store = store;

  final CacheStore _store;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final cacheOptions = options.getCacheOptions();

    if (cacheOptions == null) {
      handler.next(options);
      return;
    }

    final key = cacheOptions.keyBuilder(
      url: options.uri,
      headers: options.getFlattenHeaders(),
      body: options.data,
    );
    final cached = await _store.get(key);
    final etag = cached?.eTag;

    if (etag != null) {
      options.headers['If-None-Match'] = etag;
    }

    handler.next(options);
  }
}
