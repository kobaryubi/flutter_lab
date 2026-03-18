import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/adfurikun/view_model/adfurikun_view_model.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen for demonstrating Adfurikun interstitial and reward ads.
class AdfurikunScreen extends StatelessWidget {
  const AdfurikunScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Adfurikun Ads')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  const _Body();

  static const _interstitialAppId = 'YOUR_INTERSTITIAL_APP_ID';
  static const _rewardAppId = 'YOUR_REWARD_APP_ID';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(adfurikunViewModelProvider);
    final viewModel = ref.read(adfurikunViewModelProvider.notifier);

    /// Initializes both interstitial and reward ads when the screen opens.
    useEffect(
      () {
        viewModel
          ..initializeInterstitialAd(appId: _interstitialAppId)
          ..initializeRewardAd(appId: _rewardAppId);

        return null;
      },
      [],
    );

    final isInterstitialInitialized =
        uiState.initializeInterstitialAd is AsyncData;
    final isInterstitialReady = uiState.loadInterstitialAd is AsyncData;
    final isRewardInitialized = uiState.initializeRewardAd is AsyncData;
    final isRewardReady = uiState.loadRewardAd is AsyncData;

    /// Loads an interstitial ad.
    void handleLoadInterstitialAd() {
      viewModel.loadInterstitialAd(appId: _interstitialAppId);
    }

    /// Shows the loaded interstitial ad.
    void handleShowInterstitialAd() {
      viewModel.showInterstitialAd(appId: _interstitialAppId);
    }

    /// Loads a reward ad.
    void handleLoadRewardAd() {
      viewModel.loadRewardAd(appId: _rewardAppId);
    }

    /// Shows the loaded reward ad.
    void handleShowRewardAd() {
      viewModel.showRewardAd(appId: _rewardAppId);
    }

    return Center(
      child: Column(
        mainAxisAlignment: .center,
        children: [
          const Text('--- Interstitial Ad ---'),

          if (uiState.initializeInterstitialAd is AsyncLoading)
            const Text('Initializing...'),

          if (uiState.initializeInterstitialAd case AsyncError(:final error))
            Text('Initialize error: $error'),

          if (uiState.loadInterstitialAd is AsyncLoading)
            const Text('Loading ad...'),

          if (uiState.loadInterstitialAd case AsyncError(:final error))
            Text('Load error: $error'),

          GestureDetector(
            onTap: isInterstitialInitialized ? handleLoadInterstitialAd : null,
            child: Text(
              'Load Interstitial Ad',
              style: TextStyle(
                color: isInterstitialInitialized
                    ? const Color(0xFF000000)
                    : const Color(0xFF999999),
              ),
            ),
          ),

          GestureDetector(
            onTap: isInterstitialReady ? handleShowInterstitialAd : null,
            child: Text(
              'Show Interstitial Ad',
              style: TextStyle(
                color: isInterstitialReady
                    ? const Color(0xFF000000)
                    : const Color(0xFF999999),
              ),
            ),
          ),

          if (uiState.showInterstitialAd is AsyncData)
            const Text('Interstitial ad closed'),

          if (uiState.showInterstitialAd case AsyncError(:final error))
            Text('Show error: $error'),

          const SizedBox(height: 32),
          const Text('--- Reward Ad ---'),

          if (uiState.initializeRewardAd is AsyncLoading)
            const Text('Initializing...'),

          if (uiState.initializeRewardAd case AsyncError(:final error))
            Text('Initialize error: $error'),

          if (uiState.loadRewardAd is AsyncLoading) const Text('Loading ad...'),

          if (uiState.loadRewardAd case AsyncError(:final error))
            Text('Load error: $error'),

          GestureDetector(
            onTap: isRewardInitialized ? handleLoadRewardAd : null,
            child: Text(
              'Load Reward Ad',
              style: TextStyle(
                color: isRewardInitialized
                    ? const Color(0xFF000000)
                    : const Color(0xFF999999),
              ),
            ),
          ),

          GestureDetector(
            onTap: isRewardReady ? handleShowRewardAd : null,
            child: Text(
              'Show Reward Ad',
              style: TextStyle(
                color: isRewardReady
                    ? const Color(0xFF000000)
                    : const Color(0xFF999999),
              ),
            ),
          ),

          if (uiState.showRewardAd is AsyncData)
            Text('Reward earned: ${uiState.isRewardEarned}'),

          if (uiState.showRewardAd case AsyncError(:final error))
            Text('Show error: $error'),
        ],
      ),
    );
  }
}
