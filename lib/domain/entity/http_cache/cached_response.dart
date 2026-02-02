import 'package:freezed_annotation/freezed_annotation.dart';

part 'cached_response.freezed.dart';

/// Represents the result of a cached HTTP response.
@freezed
abstract class CachedResponse with _$CachedResponse {
  const factory CachedResponse({
    required int statusCode,
    required String body,
    required bool isFromCache,
  }) = _CachedResponse;
}
