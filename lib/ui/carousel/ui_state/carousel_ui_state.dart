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
  }) = _CarouselUiState;
}
