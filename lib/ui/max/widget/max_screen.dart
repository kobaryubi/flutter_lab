import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/max/view_model/max_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen for demonstrating AppLovin MAX SDK rewarded ads.
class MaxScreen extends StatelessWidget {
  const MaxScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('MAX Rewarded Ads')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(maxViewModelProvider);
    final viewModel = ref.read(maxViewModelProvider.notifier);

    /// Automatically loads a rewarded ad when the screen opens.
    useEffect(
      () {
        viewModel.loadRewardedAd();

        return null;
      },
      [],
    );

    final isAdReady = uiState.loadRewardedAd is AsyncData;

    /// Shows the rewarded ad.
    void handleWatchAd() {
      viewModel.showRewardedAd();
    }

    /// Opens the mediation debugger overlay.
    void handleMediationDebugger() {
      viewModel.showMediationDebugger();
    }

    return Center(
      child: Column(
        mainAxisAlignment: .center,
        children: [
          if (uiState.loadRewardedAd is AsyncLoading)
            const Text('Loading ad...'),

          if (uiState.loadRewardedAd case AsyncError(:final error))
            Text('Error: $error'),

          GestureDetector(
            onTap: isAdReady ? handleWatchAd : null,
            child: Text(
              'Watch Ad',
              style: TextStyle(
                color: isAdReady
                    ? const Color(0xFF000000)
                    : const Color(0xFF999999),
              ),
            ),
          ),

          if (uiState.showRewardedAd case AsyncData(:final value))
            Text('Reward earned: $value'),

          if (uiState.showRewardedAd case AsyncError(:final error))
            Text('Error: $error'),

          const SizedBox(height: 32),

          GestureDetector(
            onTap: handleMediationDebugger,
            child: const Text('Mediation Debugger'),
          ),
        ],
      ),
    );
  }
}
