// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ocr_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel that manages OCR text recognition from camera frames.

@ProviderFor(OcrViewModel)
const ocrViewModelProvider = OcrViewModelProvider._();

/// ViewModel that manages OCR text recognition from camera frames.
final class OcrViewModelProvider
    extends $NotifierProvider<OcrViewModel, OcrUiState> {
  /// ViewModel that manages OCR text recognition from camera frames.
  const OcrViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ocrViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ocrViewModelHash();

  @$internal
  @override
  OcrViewModel create() => OcrViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OcrUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OcrUiState>(value),
    );
  }
}

String _$ocrViewModelHash() => r'8d5db9fc8fcc4fa5e8284bd626003e0029f69a8e';

/// ViewModel that manages OCR text recognition from camera frames.

abstract class _$OcrViewModel extends $Notifier<OcrUiState> {
  OcrUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<OcrUiState, OcrUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<OcrUiState, OcrUiState>,
              OcrUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
