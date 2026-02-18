import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:etag_cache/etag_cache.dart';
import 'package:flutter/services.dart';
import 'package:flutter_lab/domain/entity/etag_cache/etag_cached_response.dart';
import 'package:flutter_lab/domain/etag_cache/etag_cache_repository.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:result_dart/result_dart.dart';

/// Repository implementation that demonstrates ETag-based HTTP caching.
///
/// Uses the generated [EtagCache] client with [DioCacheInterceptor]
/// backed by [MemCacheStore]. Mock endpoints are registered via
/// [DioAdapter], and mock data is loaded from JSON asset files.
class DioEtagCacheRepository implements EtagCacheRepository {
  DioEtagCacheRepository() {
    final options = CacheOptions(store: _cacheStore);
    _dio.interceptors.add(DioCacheInterceptor(options: options));
  }

  static const _withEtagUrl = '/products/with-etag';
  static const _withoutEtagUrl = '/products/without-etag';

  static const _withEtagAssetPath = 'lib/data/json/products_with_etag.json';
  static const _withoutEtagAssetPath =
      'lib/data/json/products_without_etag.json';

  final MemCacheStore _cacheStore = MemCacheStore();
  final Dio _dio = Dio();
  bool _mockInitialized = false;

  late final ProductsApi _productsApi = EtagCache(dio: _dio).getProductsApi();

  /// Loads JSON data from assets and registers mock endpoints.
  Future<void> _ensureMockInitialized() async {
    if (_mockInitialized) return;

    final withEtagJson = await rootBundle.loadString(_withEtagAssetPath);
    final withoutEtagJson = await rootBundle.loadString(_withoutEtagAssetPath);

    final withEtagData = jsonDecode(withEtagJson);
    final withoutEtagData = jsonDecode(withoutEtagJson);

    DioAdapter(dio: _dio)
      ..onGet(
        _withEtagUrl,
        (server) => server.reply(
          200,
          withEtagData,
          headers: {
            Headers.contentTypeHeader: ['application/json'],
            'etag': ['"v1"'],
          },
          delay: const Duration(milliseconds: 300),
        ),
      )
      ..onGet(
        _withoutEtagUrl,
        (server) => server.reply(
          200,
          withoutEtagData,
          headers: {
            Headers.contentTypeHeader: ['application/json'],
          },
          delay: const Duration(milliseconds: 300),
        ),
      );

    _mockInitialized = true;
  }

  @override
  AsyncResult<EtagCachedResponse> fetchWithEtag() async {
    await _ensureMockInitialized();
    return _fetch(() => _productsApi.productsWithEtagGet());
  }

  @override
  AsyncResult<EtagCachedResponse> fetchWithoutEtag() async {
    await _ensureMockInitialized();
    return _fetch(() => _productsApi.productsWithoutEtagGet());
  }

  @override
  AsyncResult<Unit> clearCache() async {
    try {
      await _cacheStore.clean();
      return unit.toSuccess();
    } on Exception catch (exception) {
      return exception.toFailure();
    }
  }

  AsyncResult<EtagCachedResponse> _fetch(
    Future<Response<BuiltList<Product>>> Function() apiCall,
  ) async {
    try {
      final response = await apiCall();
      final body = const JsonEncoder.withIndent('  ').convert(response.data);
      final isFromCache = response.extra[extraFromNetworkKey] == false;
      return EtagCachedResponse(
        statusCode: response.statusCode ?? 0,
        body: body,
        isFromCache: isFromCache,
      ).toSuccess();
    } on DioException catch (exception) {
      return exception.toFailure();
    }
  }
}
