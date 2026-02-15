// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'method_channel_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel for the method channel screen.

@ProviderFor(MethodChannelViewModel)
const methodChannelViewModelProvider = MethodChannelViewModelProvider._();

/// ViewModel for the method channel screen.
final class MethodChannelViewModelProvider
    extends $NotifierProvider<MethodChannelViewModel, MethodChannelUiState> {
  /// ViewModel for the method channel screen.
  const MethodChannelViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'methodChannelViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$methodChannelViewModelHash();

  @$internal
  @override
  MethodChannelViewModel create() => MethodChannelViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MethodChannelUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MethodChannelUiState>(value),
    );
  }
}

String _$methodChannelViewModelHash() =>
    r'881d022b9fce34c96e4164e6d86cf7f9e178a4e8';

/// ViewModel for the method channel screen.

abstract class _$MethodChannelViewModel
    extends $Notifier<MethodChannelUiState> {
  MethodChannelUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<MethodChannelUiState, MethodChannelUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MethodChannelUiState, MethodChannelUiState>,
              MethodChannelUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
