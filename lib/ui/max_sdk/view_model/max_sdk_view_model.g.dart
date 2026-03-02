// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'max_sdk_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel for testing AppLovin MAX SDK initialization.

@ProviderFor(MaxSdkViewModel)
const maxSdkViewModelProvider = MaxSdkViewModelProvider._();

/// ViewModel for testing AppLovin MAX SDK initialization.
final class MaxSdkViewModelProvider
    extends $NotifierProvider<MaxSdkViewModel, MaxSdkUiState> {
  /// ViewModel for testing AppLovin MAX SDK initialization.
  const MaxSdkViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'maxSdkViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$maxSdkViewModelHash();

  @$internal
  @override
  MaxSdkViewModel create() => MaxSdkViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MaxSdkUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MaxSdkUiState>(value),
    );
  }
}

String _$maxSdkViewModelHash() => r'39d74c83bbcad702cbdeeac4a71333668d123ada';

/// ViewModel for testing AppLovin MAX SDK initialization.

abstract class _$MaxSdkViewModel extends $Notifier<MaxSdkUiState> {
  MaxSdkUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<MaxSdkUiState, MaxSdkUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MaxSdkUiState, MaxSdkUiState>,
              MaxSdkUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
