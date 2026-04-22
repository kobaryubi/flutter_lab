// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adjust_deferred_deeplink_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel for the Adjust deferred deep link sample screen.
///
/// Watches [pendingDeferredDeeplinkProvider] so the UI reflects the link
/// captured by the Adjust SDK at app startup, and exposes operations to
/// drive the demo flow.

@ProviderFor(AdjustDeferredDeeplinkViewModel)
const adjustDeferredDeeplinkViewModelProvider =
    AdjustDeferredDeeplinkViewModelProvider._();

/// ViewModel for the Adjust deferred deep link sample screen.
///
/// Watches [pendingDeferredDeeplinkProvider] so the UI reflects the link
/// captured by the Adjust SDK at app startup, and exposes operations to
/// drive the demo flow.
final class AdjustDeferredDeeplinkViewModelProvider
    extends
        $NotifierProvider<
          AdjustDeferredDeeplinkViewModel,
          AdjustDeferredDeeplinkUiState
        > {
  /// ViewModel for the Adjust deferred deep link sample screen.
  ///
  /// Watches [pendingDeferredDeeplinkProvider] so the UI reflects the link
  /// captured by the Adjust SDK at app startup, and exposes operations to
  /// drive the demo flow.
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
    r'8c0cc5eb36d490a3732d1cb5ccabee76214cc6a9';

/// ViewModel for the Adjust deferred deep link sample screen.
///
/// Watches [pendingDeferredDeeplinkProvider] so the UI reflects the link
/// captured by the Adjust SDK at app startup, and exposes operations to
/// drive the demo flow.

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
