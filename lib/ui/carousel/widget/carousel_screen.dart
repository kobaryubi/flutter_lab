import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/carousel/ui_state/carousel_ui_state.dart';
import 'package:flutter_lab/ui/carousel/view_model/carousel_view_model.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen that verifies whether carousel_slider refetches images from the
/// network on every slide change, and demonstrates holding the bytes in the
/// view model state as the fix.
class CarouselScreen extends StatelessWidget {
  const CarouselScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Carousel')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(carouselViewModelProvider);
    final viewModel = ref.read(carouselViewModelProvider.notifier);

    // Fetch the image URL list once when the screen comes to the front.
    // Deferred to after the frame because `fetchImageUrls` mutates provider
    // state synchronously, which is not allowed during the build phase.
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        viewModel.fetchImageUrls();
      });

      return null;
    }, []);

    return Column(
      crossAxisAlignment: .stretch,
      spacing: 8,
      children: [
        Text('Image HTTP requests: ${uiState.imageRequestCount}'),
        Expanded(child: _ImageSection(uiState: uiState)),
      ],
    );
  }
}

class _ImageSection extends StatelessWidget {
  const _ImageSection({required this.uiState});

  final CarouselUiState uiState;

  @override
  Widget build(BuildContext context) {
    final imageUrls = uiState.imageUrls;

    if (imageUrls case AsyncData(:final value)) {
      return Text('Fetched ${value.length} image URLs');
    }

    if (imageUrls case AsyncError(:final error)) {
      return Text('Error: $error');
    }

    // The remaining states are `null` (before the first fetch) and loading.
    return const Text('Loading...');
  }
}
