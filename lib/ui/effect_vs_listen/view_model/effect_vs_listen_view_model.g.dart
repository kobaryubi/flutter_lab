// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'effect_vs_listen_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel for the useEffect vs ref.listen demonstration screen.

@ProviderFor(EffectVsListenViewModel)
const effectVsListenViewModelProvider = EffectVsListenViewModelProvider._();

/// ViewModel for the useEffect vs ref.listen demonstration screen.
final class EffectVsListenViewModelProvider
    extends $NotifierProvider<EffectVsListenViewModel, EffectVsListenUiState> {
  /// ViewModel for the useEffect vs ref.listen demonstration screen.
  const EffectVsListenViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'effectVsListenViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$effectVsListenViewModelHash();

  @$internal
  @override
  EffectVsListenViewModel create() => EffectVsListenViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EffectVsListenUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EffectVsListenUiState>(value),
    );
  }
}

String _$effectVsListenViewModelHash() =>
    r'16a0e5d2c6ccf2df6fbc55ebc8ef5368eb5cce0f';

/// ViewModel for the useEffect vs ref.listen demonstration screen.

abstract class _$EffectVsListenViewModel
    extends $Notifier<EffectVsListenUiState> {
  EffectVsListenUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<EffectVsListenUiState, EffectVsListenUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EffectVsListenUiState, EffectVsListenUiState>,
              EffectVsListenUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
