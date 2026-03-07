import 'package:flutter/widgets.dart';
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

    /// Initializes the AppLovin MAX SDK.
    void handleInitialize() {
      viewModel.initialize();
    }

    /// Loads a rewarded ad.
    void handleLoadRewardedAd() {
      viewModel.loadRewardedAd();
    }

    /// Shows a rewarded ad.
    void handleShowRewardedAd() {
      viewModel.showRewardedAd();
    }

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: .start,
        children: [
          GestureDetector(
            onTap: handleInitialize,
            child: const Text('Initialize SDK'),
          ),
          if (uiState.initialization case AsyncData())
            const Text('SDK: initialized'),
          if (uiState.initialization case AsyncError(:final error))
            Text('Error: $error'),

          const SizedBox(height: 16),

          GestureDetector(
            onTap: handleLoadRewardedAd,
            child: const Text('Load Rewarded Ad'),
          ),
          if (uiState.loadRewardedAd case AsyncData())
            const Text('Rewarded Ad: loaded'),
          if (uiState.loadRewardedAd case AsyncError(:final error))
            Text('Error: $error'),

          const SizedBox(height: 16),

          GestureDetector(
            onTap: handleShowRewardedAd,
            child: const Text('Show Rewarded Ad'),
          ),
          if (uiState.showRewardedAd case AsyncData(:final value))
            Text('Reward earned: $value'),
          if (uiState.showRewardedAd case AsyncError(:final error))
            Text('Error: $error'),
        ],
      ),
    );
  }
}
