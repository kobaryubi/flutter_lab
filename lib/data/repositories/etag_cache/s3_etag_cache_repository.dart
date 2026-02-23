import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:etag_cache/etag_cache.dart';
import 'package:flutter_lab/domain/entity/etag_cache/etag_cached_response.dart';
import 'package:flutter_lab/domain/entity/exception/domain_exception.dart';
import 'package:flutter_lab/domain/etag_cache/etag_cache_repository.dart';
import 'package:result_dart/result_dart.dart';

/// Repository that demonstrates real ETag-based HTTP caching using S3 and
/// httpbin.org.
///
/// Uses [DioCacheInterceptor] to automatically handle ETag headers and
/// `If-None-Match` / 304 responses.
///
/// - [fetchWithEtag] fetches from S3 via the [ProductsApi] client. S3
///   returns ETag headers, so the interceptor caches responses and
///   revalidates with `If-None-Match` on subsequent requests.
/// - [fetchWithoutEtag] fetches from httpbin.org, which has no ETag
///   headers, so responses are always from network.
class S3EtagCacheRepository implements EtagCacheRepository {
  S3EtagCacheRepository() {
    final cacheOptions = CacheOptions(store: _cacheStore);
    _dio.interceptors.add(
      DioCacheInterceptor(options: cacheOptions),
    );
  }

  /// S3 base URL for the ETag cache API.
  static const _s3BaseUrl =
      'https://masahiko-kobayashi-flutter-lab'
      '.s3.ap-northeast-1.amazonaws.com';

  /// httpbin.org JSON endpoint (no ETag support).
  static const _httpbinUrl = 'https://httpbin.org/json';

  final MemCacheStore _cacheStore = MemCacheStore();
  final Dio _dio = Dio(BaseOptions(baseUrl: _s3BaseUrl));

  late final ProductsApi _productsApi = EtagCache(dio: _dio).getProductsApi();

  @override
  AsyncResult<EtagCachedResponse> fetchWithEtag() async {
    try {
      final response = await _productsApi.productsWithEtagGet();
      final products = response.data;
      if (products == null) {
        return const DomainException.notFound().toFailure();
      }
      final productNames = products.map((product) => product.name).toList();
      final isFromCache = response.extra[extraFromNetworkKey] == false;
      return EtagCachedResponse(
        statusCode: response.statusCode ?? 0,
        products: productNames,
        isFromCache: isFromCache,
      ).toSuccess();
    } on DioException catch (exception) {
      return exception.toFailure();
    }
  }

  @override
  AsyncResult<EtagCachedResponse> fetchWithoutEtag() async {
    try {
      final response = await _dio.get<dynamic>(_httpbinUrl);
      final statusCode = response.statusCode ?? 0;
      final products = _parseHttpbinProducts(response.data);
      final isFromCache = response.extra[extraFromNetworkKey] == false;
      return EtagCachedResponse(
        statusCode: statusCode,
        products: products,
        isFromCache: isFromCache,
      ).toSuccess();
    } on DioException catch (exception) {
      return exception.toFailure();
    }
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

  /// Parses the httpbin.org JSON response, extracting slide titles
  /// from the slideshow structure.
  List<String> _parseHttpbinProducts(dynamic data) {
    final map = data is String
        ? jsonDecode(data) as Map<String, dynamic>
        : data as Map<String, dynamic>;
    final slideshow = map['slideshow'] as Map<String, dynamic>;
    final slides = slideshow['slides'] as List<dynamic>;
    return slides
        .cast<Map<String, dynamic>>()
        .map((slide) => slide['title'] as String)
        .toList();
  }
}
