import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/arutana/view_model/arutana_view_model.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen for demonstrating Arutana ad SDK integration.
class ArutanaScreen extends StatelessWidget {
  const ArutanaScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Arutana')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(arutanaViewModelProvider);
    final viewModel = ref.read(arutanaViewModelProvider.notifier);

    /// Initializes an interstitial ad.
    void handleInitializeInterstitialAd() {
      viewModel.initializeInterstitialAd();
    }

    /// Initializes a movie ad.
    void handleInitializeMovieAd() {
      viewModel.initializeMovieAd();
    }

    return SingleChildScrollView(
      padding: const .all(16),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          GestureDetector(
            onTap: handleInitializeInterstitialAd,
            child: const Text('Initialize Interstitial Ad'),
          ),
          if (uiState.interstitialAd case AsyncData())
            const Text('Interstitial Ad: initialized'),
          if (uiState.interstitialAd case AsyncError(:final error))
            Text('Error: $error'),

          const SizedBox(height: 16),

          GestureDetector(
            onTap: handleInitializeMovieAd,
            child: const Text('Initialize Movie Ad'),
          ),
          if (uiState.movieAd case AsyncData())
            const Text('Movie Ad: initialized'),
          if (uiState.movieAd case AsyncError(:final error))
            Text('Error: $error'),
        ],
      ),
    );
  }
}
