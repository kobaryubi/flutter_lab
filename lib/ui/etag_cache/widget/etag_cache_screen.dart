import 'package:flutter/widgets.dart';
import 'package:flutter_lab/domain/entity/etag_cache/etag_cached_response.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/etag_cache/view_model/etag_cache_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen to test ETag-based HTTP caching with DioCacheInterceptor.
class EtagCacheScreen extends StatelessWidget {
  const EtagCacheScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('ETag Cache')),
    child: _Body(),
  );
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(etagCacheViewModelProvider);
    final viewModel = ref.read(etagCacheViewModelProvider.notifier);

    /// Fetches products from the endpoint with an ETag header.
    void handleFetchWithEtag() {
      viewModel.fetchWithEtag();
    }

    /// Fetches products from the endpoint without an ETag header.
    void handleFetchWithoutEtag() {
      viewModel.fetchWithoutEtag();
    }

    /// Clears the cache store.
    void handleClearCache() {
      viewModel.clearCache();
    }

    return Column(
      crossAxisAlignment: .stretch,
      children: [
        _ActionButtons(
          onFetchWithEtag: handleFetchWithEtag,
          onFetchWithoutEtag: handleFetchWithoutEtag,
          onClearCache: handleClearCache,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                const Text('--- With ETag ---'),
                _ResponseSection(
                  response: uiState.withEtagResponse,
                ),
                const Text('--- Without ETag ---'),
                _ResponseSection(
                  response: uiState.withoutEtagResponse,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _ActionButtons extends StatelessWidget {
  const _ActionButtons({
    required this.onFetchWithEtag,
    required this.onFetchWithoutEtag,
    required this.onClearCache,
  });

  final VoidCallback onFetchWithEtag;
  final VoidCallback onFetchWithoutEtag;
  final VoidCallback onClearCache;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      GestureDetector(
        onTap: onFetchWithEtag,
        child: const Text('Fetch With ETag'),
      ),
      GestureDetector(
        onTap: onFetchWithoutEtag,
        child: const Text('Fetch Without ETag'),
      ),
      GestureDetector(
        onTap: onClearCache,
        child: const Text('Clear Cache'),
      ),
    ],
  );
}

class _ResponseSection extends StatelessWidget {
  const _ResponseSection({required this.response});

  final AsyncValue<EtagCachedResponse> response;

  @override
  Widget build(BuildContext context) {
    if (response.isLoading) {
      return const Text('Loading...');
    }
    if (response case AsyncData(:final value)) {
      return Column(
        crossAxisAlignment: .start,
        children: [
          Text('Status: ${value.statusCode}'),
          Text('From cache: ${value.isFromCache}'),
          Text(value.body),
        ],
      );
    }
    if (response case AsyncError(:final error)) {
      return Text('Error: $error');
    }
    return const SizedBox.shrink();
  }
}
