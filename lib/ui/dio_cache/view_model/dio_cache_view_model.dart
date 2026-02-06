import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/domain/entity/http_cache/cached_response.dart';
import 'package:flutter_lab/ui/dio_cache/ui_state/dio_cache_ui_state.dart';
import 'package:result_dart/result_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart' hide AsyncResult;

part 'dio_cache_view_model.g.dart';

/// ViewModel that manages dio cache fetch and clear operations.
@riverpod
class DioCacheViewModel extends _$DioCacheViewModel {
  @override
  DioCacheUiState build() => const DioCacheUiState();

  /// Sends a GET request through the cache repository.
  AsyncResult<CachedResponse> fetch() async {
    final repository = ref.read(httpCacheRepositoryProvider);
    return repository.fetch();
  }

  /// Clears the cache store and resets the response state.
  AsyncResult<Unit> clearCache() async {
    final repository = ref.read(httpCacheRepositoryProvider);
    return repository.clearCache();
  }
}
