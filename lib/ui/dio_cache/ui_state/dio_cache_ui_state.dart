import 'package:flutter_lab/domain/entity/http_cache/cached_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'dio_cache_ui_state.freezed.dart';

/// UI state for the DioCacheScreen.
///
/// `response` is `null` for the initial state, [AsyncLoading] while fetching,
/// [AsyncData] on success, and [AsyncError] on failure.
@freezed
abstract class DioCacheUiState with _$DioCacheUiState {
  const factory DioCacheUiState({
    @Default(AsyncLoading<CachedResponse>())
    AsyncValue<CachedResponse> response,
  }) = _DioCacheUiState;
}
