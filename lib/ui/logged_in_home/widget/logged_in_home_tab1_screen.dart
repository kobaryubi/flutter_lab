import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/logged_in_home/view_model/logged_in_home_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Tab 1 of the logged-in home shell. Drives the consume-and-navigate
/// flow via [LoggedInHomeViewModel]: useEffect kicks off the consume on
/// mount, and ref.listen on the view model's state forwards to the
/// target screen once it appears.
///
/// The route attaches a `ValueKey(nonce)` so each push-notification entry
/// produces a fresh element here — the shell otherwise preserves this
/// subtree across branch swaps and same-route navigations and the consume
/// flow would not re-run.
class LoggedInHomeTab1Screen extends HookConsumerWidget {
  const LoggedInHomeTab1Screen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final logger = ref.read(loggerGatewayProvider);
    final uiState = ref.watch(loggedInHomeViewModelProvider);
    final viewModel = ref.read(loggedInHomeViewModelProvider.notifier);

    /// Navigates to the consumed target screen path as soon as it appears
    /// on the UI state.
    void handleTargetScreenChange(String? previous, String? next) {
      if (next == null) return;

      context.push<void>(next);
    }

    useEffect(() {
      logger.debug('LoggedInHomeTab1Screen: initialization');
      WidgetsBinding.instance.addPostFrameCallback((_) {
        viewModel.consumePendingTargetScreen();
      });
      return null;
    }, const []);

    ref.listen<String?>(
      loggedInHomeViewModelProvider.select(
        (uiState) => uiState.targetScreen,
      ),
      handleTargetScreenChange,
    );

    return Center(
      child: Text('Tab1 — targetScreen: ${uiState.targetScreen ?? "none"}'),
    );
  }
}
