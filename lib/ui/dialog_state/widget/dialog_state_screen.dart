import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/dialog_state/view_model/dialog_state_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen demonstrating closure capture behavior with dialogs.
///
/// Verifies whether a tap handler passed to a dialog sees state changes
/// that occur after the dialog is opened.
class DialogStateScreen extends StatelessWidget {
  const DialogStateScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Dialog State')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(dialogStateViewModelProvider);

    /// Opens a dialog, passing a closure that captures the current counter.
    ///
    /// The closure captures [uiState] at the time of the call,
    /// so it should return a stale value after the counter is incremented.
    void handleOpenDialog() {
      int capturedCounter() => uiState.counter;
      showGeneralDialog(
        context: context,
        pageBuilder:
            (
              BuildContext dialogContext,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) => _DialogContent(capturedCounterHandler: capturedCounter),
      );
    }

    return Center(
      child: Column(
        mainAxisAlignment: .center,
        children: [
          Text('Counter: ${uiState.counter}'),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: handleOpenDialog,
            child: const Text('Open Dialog'),
          ),
        ],
      ),
    );
  }
}

/// Dialog content that compares closure-captured vs provider-watched values.
class _DialogContent extends HookConsumerWidget {
  const _DialogContent({required this.capturedCounterHandler});

  /// Closure that returns the counter value captured at dialog open time.
  final int Function() capturedCounterHandler;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(dialogStateViewModelProvider);
    final handlerResult = useState<int?>(null);

    /// Increments the counter via the ViewModel.
    void handleIncrement() {
      ref.read(dialogStateViewModelProvider.notifier).increment();
    }

    /// Executes the closure-captured handler and stores the result.
    void handleExecuteHandler() {
      handlerResult.value = capturedCounterHandler();
    }

    /// Closes the dialog.
    void handleClose() {
      context.pop();
    }

    return Center(
      child: Container(
        padding: const .all(24),
        margin: const .all(32),
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: .circular(8),
        ),
        child: Column(
          mainAxisSize: .min,
          children: [
            const Text('Dialog State Experiment'),
            const SizedBox(height: 16),
            Text(
              'Handler result (closure):'
              ' ${handlerResult.value ?? "not yet"}',
            ),
            const SizedBox(height: 8),
            Text('Provider counter (live): ${uiState.counter}'),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: handleIncrement,
              child: const Text('Increment Counter'),
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: handleExecuteHandler,
              child: const Text('Execute Handler'),
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: handleClose,
              child: const Text('Close'),
            ),
          ],
        ),
      ),
    );
  }
}
