import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter_lab/domain/entity/http_cache/cached_response.dart';
import 'package:flutter_lab/domain/http_cache/http_cache_repository.dart';
import 'package:result_dart/result_dart.dart';

/// Remote implementation that owns its own [Dio] instance with
/// [DioCacheInterceptor] backed by [MemCacheStore].
class DioHttpCacheRepository implements HttpCacheRepository {
  DioHttpCacheRepository() {
    final options = CacheOptions(store: _cacheStore);
    _dio.interceptors.add(DioCacheInterceptor(options: options));
  }

  static const _requestUrl = 'https://httpbin.org/get';

  final MemCacheStore _cacheStore = MemCacheStore();
  final Dio _dio = Dio();

  @override
  AsyncResult<CachedResponse> fetch() async {
    try {
      final response = await _dio.get<dynamic>(_requestUrl);
      final body = const JsonEncoder.withIndent('  ').convert(response.data);
      final isFromCache = response.extra[extraFromNetworkKey] == false;
      return CachedResponse(
        statusCode: response.statusCode ?? 0,
        body: body,
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
}
