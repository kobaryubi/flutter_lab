import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_lab/ui/carousel/ui_state/carousel_ui_state.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'carousel_view_model.g.dart';

/// ViewModel for the carousel lab screen.
///
/// Fetches the image URL list when the screen comes to the front, and counts
/// every image HTTP request so the view can show whether slides trigger
/// network access on each slide change.
@riverpod
class CarouselViewModel extends _$CarouselViewModel {
  @override
  CarouselUiState build() => const CarouselUiState();

  /// Fetches the image URL list, transitioning `loading -> data`.
  ///
  /// The view calls this once when the screen comes to the front.
  Future<void> fetchImageUrls() async {
    state = state.copyWith(imageUrls: const AsyncLoading<List<Uri>>());

    final imageUrls = await AsyncValue.guard(_listImageUrls);

    state = state.copyWith(imageUrls: imageUrls);
  }

  /// Downloads the bytes of a single image and increments the request count.
  ///
  /// Called directly from a slide's build in the "fetch per slide build"
  /// mode, which reproduces the refetch-per-slide problem.
  Future<Uint8List> downloadImage({required Uri url}) async {
    final response = await http.get(url);

    // Mutating provider state is deferred until after the awaited response,
    // so it never runs synchronously inside the widget build phase.
    state = state.copyWith(imageRequestCount: state.imageRequestCount + 1);

    if (response.statusCode != HttpStatus.ok) {
      throw HttpException(
        'Failed to download image: ${response.statusCode}',
        uri: url,
      );
    }

    return response.bodyBytes;
  }

  /// Downloads all images once and keeps their bytes in the UI state.
  ///
  /// Slides rendering from [CarouselUiState.prefetchedImages] never touch the
  /// network on a slide change, which is the fix being verified.
  Future<void> prefetchImages() async {
    final imageUrls = state.imageUrls;

    if (imageUrls case AsyncData(:final value)) {
      state = state.copyWith(
        prefetchedImages: const AsyncLoading<Map<Uri, Uint8List>>(),
      );

      final prefetchedImages = await AsyncValue.guard(
        () async => {
          for (final url in value) url: await downloadImage(url: url),
        },
      );

      state = state.copyWith(prefetchedImages: prefetchedImages);
    }
  }

  /// Builds the image URL list, simulating an image-list API call.
  Future<List<Uri>> _listImageUrls() async {
    // Dummy delay so the `loading` state is visible before `data`.
    await Future<void>.delayed(const Duration(milliseconds: 500));

    const imageIds = [10, 20, 30, 40, 50];

    return [
      for (final imageId in imageIds)
        Uri.parse('https://picsum.photos/id/$imageId/400/300'),
    ];
  }
}
