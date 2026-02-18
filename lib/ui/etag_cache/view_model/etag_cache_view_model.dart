import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/domain/entity/etag_cache/etag_cached_response.dart';
import 'package:flutter_lab/ui/etag_cache/ui_state/etag_cache_ui_state.dart';
import 'package:result_dart/result_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart' hide AsyncResult;

part 'etag_cache_view_model.g.dart';

/// ViewModel that manages ETag cache fetch and clear operations.
@riverpod
class EtagCacheViewModel extends _$EtagCacheViewModel {
  @override
  EtagCacheUiState build() => const EtagCacheUiState();

  /// Fetches products from the endpoint with an ETag header.
  AsyncResult<EtagCachedResponse> fetchWithEtag() async {
    final repository = ref.read(etagCacheRepositoryProvider);
    return repository.fetchWithEtag();
  }

  /// Fetches products from the endpoint without an ETag header.
  AsyncResult<EtagCachedResponse> fetchWithoutEtag() async {
    final repository = ref.read(etagCacheRepositoryProvider);
    return repository.fetchWithoutEtag();
  }

  /// Clears the cache store.
  AsyncResult<Unit> clearCache() async {
    final repository = ref.read(etagCacheRepositoryProvider);
    return repository.clearCache();
  }
}
