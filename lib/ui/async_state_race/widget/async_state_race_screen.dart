import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/async_state_race/view_model/async_state_race_view_model.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen demonstrating the async state race condition bug and its fix.
class AsyncStateRaceScreen extends StatelessWidget {
  const AsyncStateRaceScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Async State Race')),
    child: _Body(),
  );
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(asyncStateRaceViewModelProvider.notifier);
    final uiState = ref.watch(asyncStateRaceViewModelProvider);

    /// Handles tapping the "Fetch All (Bug)" button.
    void handleFetchWithBug() {
      viewModel.fetchAllWithBug();
    }

    /// Handles tapping the "Fetch All (Fix)" button.
    void handleFetchWithFix() {
      viewModel.fetchAllWithFix();
    }

    /// Handles tapping the "Reset" button.
    void handleReset() {
      viewModel.reset();
    }

    return Padding(
      padding: const .all(16),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text('fetchA: ${_formatAsyncValue(uiState.fetchA)}'),
          const SizedBox(height: 8),
          Text('fetchB: ${_formatAsyncValue(uiState.fetchB)}'),
          const SizedBox(height: 8),
          Text('fetchC: ${_formatAsyncValue(uiState.fetchC)}'),
          const SizedBox(height: 24),
          GestureDetector(
            behavior: .opaque,
            onTap: handleFetchWithBug,
            child: const Text('[Fetch All (Bug)]'),
          ),
          const SizedBox(height: 16),
          GestureDetector(
            behavior: .opaque,
            onTap: handleFetchWithFix,
            child: const Text('[Fetch All (Fix)]'),
          ),
          const SizedBox(height: 16),
          GestureDetector(
            behavior: .opaque,
            onTap: handleReset,
            child: const Text('[Reset]'),
          ),
        ],
      ),
    );
  }

  /// Formats an [AsyncValue] field for display.
  String _formatAsyncValue(AsyncValue<String>? value) {
    if (value == null) return '-';
    if (value case AsyncData(:final value)) return value;
    if (value is AsyncLoading) return 'Loading...';
    if (value case AsyncError(:final error)) return 'Error: $error';
    return '-';
  }
}
