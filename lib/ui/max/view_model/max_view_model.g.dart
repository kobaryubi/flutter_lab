// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'max_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel for the MAX SDK rewarded ads demo screen.
///
/// Provides methods to load and show rewarded ads.

@ProviderFor(MaxViewModel)
const maxViewModelProvider = MaxViewModelProvider._();

/// ViewModel for the MAX SDK rewarded ads demo screen.
///
/// Provides methods to load and show rewarded ads.
final class MaxViewModelProvider
    extends $NotifierProvider<MaxViewModel, MaxUiState> {
  /// ViewModel for the MAX SDK rewarded ads demo screen.
  ///
  /// Provides methods to load and show rewarded ads.
  const MaxViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'maxViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$maxViewModelHash();

  @$internal
  @override
  MaxViewModel create() => MaxViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MaxUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MaxUiState>(value),
    );
  }
}

String _$maxViewModelHash() => r'45192461363e70ea6175a85c7f0e7541c8a6c851';

/// ViewModel for the MAX SDK rewarded ads demo screen.
///
/// Provides methods to load and show rewarded ads.

abstract class _$MaxViewModel extends $Notifier<MaxUiState> {
  MaxUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<MaxUiState, MaxUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MaxUiState, MaxUiState>,
              MaxUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
