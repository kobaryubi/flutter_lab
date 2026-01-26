import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_lab/domain/image/image_repository.dart';
import 'package:flutter_lab/domain/image/s3_image_cache_result.dart';
import 'package:result_dart/result_dart.dart';

/// Implementation of S3 image repository using Dio.
class S3ImageRepositoryImpl implements ImageRepository {
  /// Creates a new instance.
  S3ImageRepositoryImpl({
    required Dio dio,
    required String bucketName,
    required String region,
  }) : _dio = dio,
       _baseUrl = 'https://$bucketName.s3.$region.amazonaws.com';

  final Dio _dio;
  final String _baseUrl;

  @override
  AsyncResult<S3ImageCacheResult> fetchImage({
    required String imageKey,
    String? cachedEtag,
  }) async {
    try {
      final headers = <String, dynamic>{};
      if (cachedEtag != null) {
        headers['If-None-Match'] = cachedEtag;
      }

      final response = await _dio.get<List<int>>(
        '$_baseUrl/$imageKey',
        options: Options(
          headers: headers,
          responseType: ResponseType.bytes,
          validateStatus: (status) => status == 200 || status == 304,
        ),
      );

      final etag = response.headers.value('etag') ?? '';

      if (response.statusCode == 304) {
        return S3ImageCacheResult.cacheHit(
          etag: cachedEtag ?? etag,
        ).toSuccess();
      }

      final imageData = Uint8List.fromList(response.data ?? []);
      return S3ImageCacheResult.cacheMiss(
        etag: etag,
        imageData: imageData,
      ).toSuccess();
    } on DioException catch (exception) {
      return Failure(exception);
    }
  }
}
