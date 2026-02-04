// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel that manages network connectivity checks.

@ProviderFor(NetworkViewModel)
const networkViewModelProvider = NetworkViewModelProvider._();

/// ViewModel that manages network connectivity checks.
final class NetworkViewModelProvider
    extends $NotifierProvider<NetworkViewModel, NetworkUiState> {
  /// ViewModel that manages network connectivity checks.
  const NetworkViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'networkViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$networkViewModelHash();

  @$internal
  @override
  NetworkViewModel create() => NetworkViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NetworkUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NetworkUiState>(value),
    );
  }
}

String _$networkViewModelHash() => r'be8fcf9d56cf25bda2bff6fdead2630d05dac154';

/// ViewModel that manages network connectivity checks.

abstract class _$NetworkViewModel extends $Notifier<NetworkUiState> {
  NetworkUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<NetworkUiState, NetworkUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<NetworkUiState, NetworkUiState>,
              NetworkUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
