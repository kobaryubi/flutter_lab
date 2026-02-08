import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/arutana_ad/view_model/arutana_ad_view_model.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen for testing Arutana interstitial and movie ads.
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
    final state = ref.watch(arutanaAdViewModelProvider);
    final viewModel = ref.read(arutanaAdViewModelProvider.notifier);

    /// Requests to show an interstitial ad.
    void handleShowInterstitial() {
      viewModel.handleShowInterstitial();
    }

    /// Requests to show a movie ad.
    void handleShowMovie() {
      viewModel.handleShowMovie();
    }

    return Column(
      crossAxisAlignment: .stretch,
      children: [
        Text('Interstitial: ${state.interstitialStatus}'),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: state.isInterstitialLoading ? null : handleShowInterstitial,
          child: Text(
            state.isInterstitialLoading ? 'Loading...' : 'Show Interstitial',
          ),
        ),
        const SizedBox(height: 24),
        Text('Movie: ${state.movieStatus}'),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: state.isMovieLoading ? null : handleShowMovie,
          child: Text(
            state.isMovieLoading ? 'Loading...' : 'Show Movie',
          ),
        ),
      ],
    );
  }
}
