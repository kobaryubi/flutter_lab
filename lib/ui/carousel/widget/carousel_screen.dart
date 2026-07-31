import 'package:carousel_slider/carousel_slider.dart';
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

    final usesPrefetchedImages = useState(false);

    /// Switches between per-build fetching and prefetched-bytes rendering,
    /// resetting the counter so each mode is measured from a clean baseline.
    void handleModeToggle() {
      usesPrefetchedImages.value = !usesPrefetchedImages.value;
      viewModel.resetRequestCount();

      if (usesPrefetchedImages.value) {
        viewModel.prefetchImages();
      }
    }

    final enablesInfiniteScroll = useState(true);

    /// Toggles infinite scroll, resetting the counter so looping and
    /// non-looping refetch behavior can be compared.
    void handleInfiniteScrollToggle() {
      enablesInfiniteScroll.value = !enablesInfiniteScroll.value;
      viewModel.resetRequestCount();
    }

    final modeLabel = usesPrefetchedImages.value
        ? 'prefetched bytes'
        : 'fetch per slide build';
    final infiniteScrollLabel = enablesInfiniteScroll.value ? 'on' : 'off';

    return Column(
      crossAxisAlignment: .stretch,
      spacing: 8,
      children: [
        Text('Image HTTP requests: ${uiState.imageRequestCount}'),
        GestureDetector(
          onTap: handleModeToggle,
          child: Text('Mode: $modeLabel (tap to switch)'),
        ),
        GestureDetector(
          onTap: handleInfiniteScrollToggle,
          child: Text('Infinite scroll: $infiniteScrollLabel (tap to switch)'),
        ),
        Expanded(
          child: _ImageSection(
            uiState: uiState,
            usesPrefetchedImages: usesPrefetchedImages.value,
            enablesInfiniteScroll: enablesInfiniteScroll.value,
          ),
        ),
      ],
    );
  }
}

class _ImageSection extends StatelessWidget {
  const _ImageSection({
    required this.uiState,
    required this.usesPrefetchedImages,
    required this.enablesInfiniteScroll,
  });

  final CarouselUiState uiState;

  /// Whether slides render prefetched bytes instead of fetching per build.
  final bool usesPrefetchedImages;

  /// Whether the carousel loops infinitely, matching the problem scenario.
  final bool enablesInfiniteScroll;

  @override
  Widget build(BuildContext context) {
    final imageUrls = uiState.imageUrls;

    if (imageUrls case AsyncData(:final value)) {
      /// Builds one slide for the current fetching mode.
      Widget buildSlide(BuildContext context, int index, int realIndex) {
        final url = value[index];

        return usesPrefetchedImages
            ? _PrefetchedSlide(uiState: uiState, url: url)
            : _PerBuildFetchSlide(url: url);
      }

      return CarouselSlider.builder(
        itemCount: value.length,
        itemBuilder: buildSlide,
        options: CarouselOptions(
          autoPlay: true,
          enableInfiniteScroll: enablesInfiniteScroll,
        ),
      );
    }

    if (imageUrls case AsyncError(:final error)) {
      return Text('Error: $error');
    }

    // The remaining states are `null` (before the first fetch) and loading.
    return const Text('Loading...');
  }
}

/// Slide that downloads its image inside its own build, reproducing the
/// refetch-per-slide problem: infinite scroll mounts a fresh element on every
/// slide change, so this widget's download runs again each time.
class _PerBuildFetchSlide extends HookConsumerWidget {
  const _PerBuildFetchSlide({required this.url});

  final Uri url;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(carouselViewModelProvider.notifier);

    // `useMemoized` caches the future only for this element's lifetime, and
    // infinite scroll mounts a fresh element per slide change — so a new
    // download starts every time the carousel advances.
    final imageBytesFuture = useMemoized(
      () => viewModel.downloadImage(url: url),
      [url],
    );
    final imageBytesSnapshot = useFuture(imageBytesFuture);

    if (imageBytesSnapshot.hasError) {
      return Text('Error: ${imageBytesSnapshot.error}');
    }

    final imageBytes = imageBytesSnapshot.data;

    if (imageBytes == null) {
      return const Text('Downloading...');
    }

    return Image.memory(imageBytes);
  }
}

/// Slide that renders bytes already held in the UI state, so advancing the
/// carousel never touches the network even though a fresh element is mounted.
class _PrefetchedSlide extends StatelessWidget {
  const _PrefetchedSlide({required this.uiState, required this.url});

  final CarouselUiState uiState;
  final Uri url;

  @override
  Widget build(BuildContext context) {
    final prefetchedImages = uiState.prefetchedImages;

    if (prefetchedImages case AsyncData(:final value)) {
      final imageBytes = value[url];

      return imageBytes == null
          ? const Text('No prefetched image')
          : Image.memory(imageBytes);
    }

    if (prefetchedImages case AsyncError(:final error)) {
      return Text('Error: $error');
    }

    // The remaining states are `null` (not started yet) and loading.
    return const Text('Prefetching...');
  }
}
