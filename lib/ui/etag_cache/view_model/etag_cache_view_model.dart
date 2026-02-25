import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/etag_cache/ui_state/etag_cache_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'etag_cache_view_model.g.dart';

/// ViewModel that manages ETag cache fetch and clear operations.
@riverpod
class EtagCacheViewModel extends _$EtagCacheViewModel {
  @override
  EtagCacheUiState build() => const EtagCacheUiState();

  /// Fetches products from the endpoint with an ETag header.
  Future<void> fetchWithEtag() async {
    state = state.copyWith(withEtagResponse: const AsyncLoading());

    final repository = ref.read(etagCacheRepositoryProvider);
    final withEtagResponse = await AsyncValue.guard(
      () async => (await repository.fetchWithEtag()).getOrThrow(),
    );

    state = state.copyWith(withEtagResponse: withEtagResponse);
  }

  /// Fetches products from the endpoint without an ETag header.
  Future<void> fetchWithoutEtag() async {
    final repository = ref.read(etagCacheRepositoryProvider);
    final withoutEtagResponse = await AsyncValue.guard(
      () async => (await repository.fetchWithoutEtag()).getOrThrow(),
    );

    state = state.copyWith(withoutEtagResponse: withoutEtagResponse);
  }

  /// Clears the cache store.
  Future<void> clearCache() async {
    await ref.read(etagCacheRepositoryProvider).clearCache();
    state = const EtagCacheUiState();
  }
}
