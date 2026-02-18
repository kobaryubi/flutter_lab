import 'package:freezed_annotation/freezed_annotation.dart';

part 'etag_cached_response.freezed.dart';

/// Represents the result of an ETag-cached HTTP response.
@freezed
abstract class EtagCachedResponse with _$EtagCachedResponse {
  const factory EtagCachedResponse({
    required int statusCode,
    required String body,
    required bool isFromCache,
  }) = _EtagCachedResponse;
}
