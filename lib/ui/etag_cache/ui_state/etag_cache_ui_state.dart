import 'package:flutter_lab/domain/entity/etag_cache/etag_cached_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'etag_cache_ui_state.freezed.dart';

/// UI state for the EtagCacheScreen.
@freezed
abstract class EtagCacheUiState with _$EtagCacheUiState {
  const factory EtagCacheUiState({
    @Default(AsyncLoading<EtagCachedResponse>())
    AsyncValue<EtagCachedResponse> withEtagResponse,
    @Default(AsyncLoading<EtagCachedResponse>())
    AsyncValue<EtagCachedResponse> withoutEtagResponse,
  }) = _EtagCacheUiState;
}
