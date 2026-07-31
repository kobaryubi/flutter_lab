import 'package:flutter_lab/ui/carousel/ui_state/carousel_ui_state.dart';
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
