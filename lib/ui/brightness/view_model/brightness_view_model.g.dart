// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brightness_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel that manages screen brightness operations.

@ProviderFor(BrightnessViewModel)
const brightnessViewModelProvider = BrightnessViewModelProvider._();

/// ViewModel that manages screen brightness operations.
final class BrightnessViewModelProvider
    extends $NotifierProvider<BrightnessViewModel, BrightnessUiState> {
  /// ViewModel that manages screen brightness operations.
  const BrightnessViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'brightnessViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$brightnessViewModelHash();

  @$internal
  @override
  BrightnessViewModel create() => BrightnessViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BrightnessUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BrightnessUiState>(value),
    );
  }
}

String _$brightnessViewModelHash() =>
    r'1761e683ca1a50cef141467bd4e39d2267e47512';

/// ViewModel that manages screen brightness operations.

abstract class _$BrightnessViewModel extends $Notifier<BrightnessUiState> {
  BrightnessUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<BrightnessUiState, BrightnessUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<BrightnessUiState, BrightnessUiState>,
              BrightnessUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
