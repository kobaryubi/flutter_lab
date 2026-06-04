import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/revalidating_image/ui_state/revalidating_image_ui_state.dart';
import 'package:flutter_lab/ui/revalidating_image/view_model/revalidating_image_view_model.dart';
import 'package:flutter_lab/ui/revalidating_image/widget/revalidating_image.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen that shows a cached network image which revalidates its ETag on
/// every fetch, so swapping the server content is reflected on the next tap.
class RevalidatingImageScreen extends StatelessWidget {
  const RevalidatingImageScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Revalidating Image')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(revalidatingImageViewModelProvider);
    final viewModel = ref.read(revalidatingImageViewModelProvider.notifier);

    // Fetch once when the screen first appears, in addition to button taps.
    // Deferred to after the frame because `fetchImageUrl` mutates provider
    // state synchronously, which is not allowed during the build phase.
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        viewModel.fetchImageUrl();
      });

      return null;
    }, []);

    /// Fetches the image URL through the view model (`loading -> data`).
    void handleFetch() {
      viewModel.fetchImageUrl();
    }

    return Column(
      crossAxisAlignment: .stretch,
      spacing: 8,
      children: [
        GestureDetector(
          onTap: handleFetch,
          child: const Text('Fetch image URL'),
        ),
        Expanded(child: _ImageSection(uiState: uiState)),
      ],
    );
  }
}

class _ImageSection extends StatelessWidget {
  const _ImageSection({required this.uiState});

  final RevalidatingImageUiState uiState;

  @override
  Widget build(BuildContext context) {
    final imageUrl = uiState.imageUrl;

    if (imageUrl == null) {
      return const Text('Tap the button to fetch the image URL.');
    }

    if (imageUrl case AsyncData(:final value)) {
      return RevalidatingImage(url: value);
    }

    if (imageUrl case AsyncError(:final error)) {
      return Text('Error: $error');
    }

    // The only remaining AsyncValue state is loading.
    return const Text('Loading...');
  }
}
