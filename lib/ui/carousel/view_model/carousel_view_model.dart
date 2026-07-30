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
}
