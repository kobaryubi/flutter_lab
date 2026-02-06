import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/dio_cache/view_model/dio_cache_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen to test dio_cache_interceptor with MemCacheStore.
class DioCacheScreen extends StatelessWidget {
  const DioCacheScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Dio Cache')),
    child: _Body(),
  );
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(dioCacheViewModelProvider);
    final viewModel = ref.read(dioCacheViewModelProvider.notifier);

    /// Sends a GET request through the ViewModel.
    void handleSendRequest() {
      viewModel.fetch();
    }

    /// Clears the cache through the ViewModel.
    void handleClearCache() {
      viewModel.clearCache();
    }

    final response = uiState.response;

    return Column(
      crossAxisAlignment: .stretch,
      children: [
        _ActionButtons(
          onSendRequest: handleSendRequest,
          onClearCache: handleClearCache,
        ),
        if (response.isLoading) const Text('Loading...'),
        if (response.hasValue)
          _ResponseInfo(
            status: response.value!.statusCode,
            isFromCache: response.value!.isFromCache,
          ),
        if (response.hasValue)
          Expanded(
            child: SingleChildScrollView(
              child: Text(response.value!.body),
            ),
          ),
        if (response.hasError) Text('Error: ${response.error}'),
      ],
    );
  }
}

class _ActionButtons extends StatelessWidget {
  const _ActionButtons({
    required this.onSendRequest,
    required this.onClearCache,
  });

  final VoidCallback onSendRequest;
  final VoidCallback onClearCache;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      GestureDetector(
        onTap: onSendRequest,
        child: const Text('Send Request'),
      ),
      GestureDetector(
        onTap: onClearCache,
        child: const Text('Clear Cache'),
      ),
    ],
  );
}

class _ResponseInfo extends StatelessWidget {
  const _ResponseInfo({
    required this.status,
    required this.isFromCache,
  });

  final int status;
  final bool isFromCache;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: .start,
    children: [
      Text('Status: $status'),
      Text('From cache: $isFromCache'),
    ],
  );
}
