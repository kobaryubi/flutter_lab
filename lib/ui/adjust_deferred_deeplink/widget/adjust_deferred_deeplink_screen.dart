import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/adjust_deferred_deeplink/view_model/adjust_deferred_deeplink_view_model.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/button.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Sample screen demonstrating Adjust's deferred deep link flow.
///
/// Both deferred and direct deep links share a single storage slot. The
/// user simulates an incoming link, then presses "consume" to read and
/// clear it — mirroring how a post-login navigator would handle it in
/// production.
class AdjustDeferredDeeplinkScreen extends ConsumerWidget {
  const AdjustDeferredDeeplinkScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(adjustDeferredDeeplinkViewModelProvider);
    final viewModel = ref.read(
      adjustDeferredDeeplinkViewModelProvider.notifier,
    );

    /// Asks the mock gateway to deliver a fake deferred deep link.
    void handleSimulateDeferred() {
      viewModel.simulateDeferredDeeplink();
    }

    /// Asks the mock gateway to deliver a fake direct deep link.
    void handleSimulateDirect() {
      viewModel.simulateDirectDeeplink();
    }

    /// Reads and clears the pending deep link, surfacing it in UI state.
    void handleConsume() {
      viewModel.consumePendingDeeplink();
    }

    /// Fetches the Adjust Device Identifier and stores it in UI state.
    Future<void> handleLoadAdid() async {
      await viewModel.loadAdid();
    }

    final consumedDeeplink = uiState.consumedDeeplink;

    return Layout(
      appBar: const AppBar(title: Text('Adjust deferred deep link')),
      child: Column(
        mainAxisSize: .min,
        crossAxisAlignment: .start,
        spacing: 16,
        children: [
          Text('last consumed: ${consumedDeeplink ?? '(none)'}'),
          Button(
            label: 'simulate deferred deeplink',
            onTap: handleSimulateDeferred,
          ),
          Button(
            label: 'simulate direct deeplink',
            onTap: handleSimulateDirect,
          ),
          Button(
            label: 'consume pending deeplink',
            onTap: handleConsume,
          ),
          Button(
            label: 'load adid',
            onTap: handleLoadAdid,
          ),
          if (uiState.adid case AsyncData(:final value)) Text('adid: $value'),
        ],
      ),
    );
  }
}
