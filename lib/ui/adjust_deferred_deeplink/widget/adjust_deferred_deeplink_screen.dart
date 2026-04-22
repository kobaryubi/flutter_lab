import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/adjust_deferred_deeplink/view_model/adjust_deferred_deeplink_view_model.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/button.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Sample screen demonstrating Adjust's deferred deep link flow.
///
/// Mirrors the docs example: a deep link captured by the SDK at app
/// startup is held until onboarding completes, then consumed.
class AdjustDeferredDeeplinkScreen extends ConsumerWidget {
  const AdjustDeferredDeeplinkScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(adjustDeferredDeeplinkViewModelProvider);
    final viewModel = ref.read(
      adjustDeferredDeeplinkViewModelProvider.notifier,
    );

    /// Asks the mock gateway to deliver a fake deferred deep link.
    void handleSimulate() {
      viewModel.simulateDeferredDeeplink();
    }

    /// Marks onboarding complete, consuming any pending link.
    void handleCompleteOnboarding() {
      viewModel.completeOnboarding();
    }

    /// Fetches the Adjust Device Identifier and stores it in UI state.
    Future<void> handleLoadAdid() async {
      await viewModel.loadAdid();
    }

    final pendingDeeplink = uiState.pendingDeeplink;

    return Layout(
      appBar: const AppBar(title: Text('Adjust deferred deep link')),
      child: Column(
        mainAxisSize: .min,
        crossAxisAlignment: .start,
        spacing: 16,
        children: [
          Text('pending: ${pendingDeeplink ?? '(none)'}'),
          Button(
            label: 'simulate deferred deeplink',
            onTap: handleSimulate,
          ),
          Button(
            label: 'complete onboarding',
            onTap: handleCompleteOnboarding,
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
