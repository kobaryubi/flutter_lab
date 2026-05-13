import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/logged_in_home/ui_state/logged_in_home_ui_state.dart';
import 'package:flutter_lab/ui/logged_in_home/view_model/logged_in_home_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Landing screen shown after login. Reads the pending target screen
/// captured from a push-notification tap and exposes it for the view layer
/// to navigate to. Re-arrivals via `go` re-trigger the consume on mount,
/// so no per-screen stream subscription is needed.
class LoggedInHomeScreen extends HookConsumerWidget {
  const LoggedInHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(loggedInHomeViewModelProvider);
    final viewModel = ref.read(loggedInHomeViewModelProvider.notifier);

    /// Consumes the pending target screen after the first frame builds,
    /// so the resulting state mutation does not run during widget build.
    void consumeAfterFrame(Duration _) {
      viewModel.consumePendingTargetScreen();
    }

    /// Navigates to the consumed target screen path as soon as it appears
    /// on the UI state, replacing this landing screen in the stack.
    void handleUiStateChange(
      LoggedInHomeUiState? previous,
      LoggedInHomeUiState next,
    ) {
      final targetScreen = next.targetScreen;

      if (targetScreen == null) return;

      context.go(targetScreen);
    }

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback(consumeAfterFrame);
      return null;
    }, const []);

    ref.listen(loggedInHomeViewModelProvider, handleUiStateChange);

    return Layout(
      appBar: const AppBar(title: Text('Logged In Home')),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 8,
        children: [
          Text('targetScreen: ${uiState.targetScreen ?? "none"}'),
        ],
      ),
    );
  }
}
