// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routing_custom_transition_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel that simulates the initial API fetch for the screen.

@ProviderFor(RoutingCustomTransitionViewModel)
const routingCustomTransitionViewModelProvider =
    RoutingCustomTransitionViewModelProvider._();

/// ViewModel that simulates the initial API fetch for the screen.
final class RoutingCustomTransitionViewModelProvider
    extends
        $NotifierProvider<
          RoutingCustomTransitionViewModel,
          RoutingCustomTransitionUiState
        > {
  /// ViewModel that simulates the initial API fetch for the screen.
  const RoutingCustomTransitionViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'routingCustomTransitionViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$routingCustomTransitionViewModelHash();

  @$internal
  @override
  RoutingCustomTransitionViewModel create() =>
      RoutingCustomTransitionViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RoutingCustomTransitionUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RoutingCustomTransitionUiState>(
        value,
      ),
    );
  }
}

String _$routingCustomTransitionViewModelHash() =>
    r'741062a5108e22ce5e97f8293b453aae80e2d8f8';

/// ViewModel that simulates the initial API fetch for the screen.

abstract class _$RoutingCustomTransitionViewModel
    extends $Notifier<RoutingCustomTransitionUiState> {
  RoutingCustomTransitionUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              RoutingCustomTransitionUiState,
              RoutingCustomTransitionUiState
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                RoutingCustomTransitionUiState,
                RoutingCustomTransitionUiState
              >,
              RoutingCustomTransitionUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
