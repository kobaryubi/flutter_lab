import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/arutana_ad/view_model/arutana_ad_view_model.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen for testing Arutana interstitial ads.
class ArutanaAdScreen extends StatelessWidget {
  const ArutanaAdScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Arutana Ad')),
    child: _Body(),
  );
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(arutanaAdViewModelProvider);
    final viewModel = ref.read(arutanaAdViewModelProvider.notifier);

    /// Requests to show an interstitial ad.
    void handleShowInterstitial() {
      viewModel.handleShowInterstitial();
    }

    return Column(
      crossAxisAlignment: .stretch,
      children: [
        Text('Interstitial: ${uiState.interstitialStatus.name}'),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: handleShowInterstitial,
          child: const Text('Show Interstitial'),
        ),
      ],
    );
  }
}
