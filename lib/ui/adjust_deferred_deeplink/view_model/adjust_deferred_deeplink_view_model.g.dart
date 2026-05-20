// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adjust_deferred_deeplink_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel for the Adjust deferred deep link sample screen.
///
/// Drives the demo manually: simulate buttons push fake deep links into
/// the shared storage via the real Adjust callbacks, and a "consume"
/// button reads and clears the stored value via the consume use case.

@ProviderFor(AdjustDeferredDeeplinkViewModel)
const adjustDeferredDeeplinkViewModelProvider =
    AdjustDeferredDeeplinkViewModelProvider._();

/// ViewModel for the Adjust deferred deep link sample screen.
///
/// Drives the demo manually: simulate buttons push fake deep links into
/// the shared storage via the real Adjust callbacks, and a "consume"
/// button reads and clears the stored value via the consume use case.
final class AdjustDeferredDeeplinkViewModelProvider
    extends
        $NotifierProvider<
          AdjustDeferredDeeplinkViewModel,
          AdjustDeferredDeeplinkUiState
        > {
  /// ViewModel for the Adjust deferred deep link sample screen.
  ///
  /// Drives the demo manually: simulate buttons push fake deep links into
  /// the shared storage via the real Adjust callbacks, and a "consume"
  /// button reads and clears the stored value via the consume use case.
  const AdjustDeferredDeeplinkViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'adjustDeferredDeeplinkViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$adjustDeferredDeeplinkViewModelHash();

  @$internal
  @override
  AdjustDeferredDeeplinkViewModel create() => AdjustDeferredDeeplinkViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AdjustDeferredDeeplinkUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AdjustDeferredDeeplinkUiState>(
        value,
      ),
    );
  }
}

String _$adjustDeferredDeeplinkViewModelHash() =>
    r'd91a0278e47bc1f5e6bc019e270e4840116fca12';

/// ViewModel for the Adjust deferred deep link sample screen.
///
/// Drives the demo manually: simulate buttons push fake deep links into
/// the shared storage via the real Adjust callbacks, and a "consume"
/// button reads and clears the stored value via the consume use case.

abstract class _$AdjustDeferredDeeplinkViewModel
    extends $Notifier<AdjustDeferredDeeplinkUiState> {
  AdjustDeferredDeeplinkUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AdjustDeferredDeeplinkUiState,
              AdjustDeferredDeeplinkUiState
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AdjustDeferredDeeplinkUiState,
                AdjustDeferredDeeplinkUiState
              >,
              AdjustDeferredDeeplinkUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
