import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'carousel_ui_state.freezed.dart';

/// UI state for the CarouselScreen.
@freezed
abstract class CarouselUiState with _$CarouselUiState {
  const factory CarouselUiState({
    /// Image URLs returned by the image-list API. `null` before the first
    /// fetch, which fires when the screen comes to the front.
    AsyncValue<List<Uri>>? imageUrls,

    /// Image bytes prefetched once by the view model, keyed by URL.
    ///
    /// Holding the bytes here (instead of fetching inside each slide's
    /// build) is what prevents a network request per slide change.
    AsyncValue<Map<Uri, Uint8List>>? prefetchedImages,

    /// Number of image HTTP requests issued since the screen appeared,
    /// displayed so the refetch-per-slide problem is observable.
    @Default(0) int imageRequestCount,
  }) = _CarouselUiState;
}
