// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carousel_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel for the carousel lab screen.
///
/// Fetches the image URL list when the screen comes to the front, and counts
/// every image HTTP request so the view can show whether slides trigger
/// network access on each slide change.

@ProviderFor(CarouselViewModel)
const carouselViewModelProvider = CarouselViewModelProvider._();

/// ViewModel for the carousel lab screen.
///
/// Fetches the image URL list when the screen comes to the front, and counts
/// every image HTTP request so the view can show whether slides trigger
/// network access on each slide change.
final class CarouselViewModelProvider
    extends $NotifierProvider<CarouselViewModel, CarouselUiState> {
  /// ViewModel for the carousel lab screen.
  ///
  /// Fetches the image URL list when the screen comes to the front, and counts
  /// every image HTTP request so the view can show whether slides trigger
  /// network access on each slide change.
  const CarouselViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'carouselViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$carouselViewModelHash();

  @$internal
  @override
  CarouselViewModel create() => CarouselViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CarouselUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CarouselUiState>(value),
    );
  }
}

String _$carouselViewModelHash() => r'152a58137c38cde8c3728fec832603b9831c934b';

/// ViewModel for the carousel lab screen.
///
/// Fetches the image URL list when the screen comes to the front, and counts
/// every image HTTP request so the view can show whether slides trigger
/// network access on each slide change.

abstract class _$CarouselViewModel extends $Notifier<CarouselUiState> {
  CarouselUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<CarouselUiState, CarouselUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CarouselUiState, CarouselUiState>,
              CarouselUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
