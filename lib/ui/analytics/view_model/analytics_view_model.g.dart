// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel for the Firebase Analytics demo screen.
///
/// Provides methods to set default parameters and log custom events.

@ProviderFor(AnalyticsViewModel)
const analyticsViewModelProvider = AnalyticsViewModelProvider._();

/// ViewModel for the Firebase Analytics demo screen.
///
/// Provides methods to set default parameters and log custom events.
final class AnalyticsViewModelProvider
    extends $NotifierProvider<AnalyticsViewModel, AnalyticsUiState> {
  /// ViewModel for the Firebase Analytics demo screen.
  ///
  /// Provides methods to set default parameters and log custom events.
  const AnalyticsViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'analyticsViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$analyticsViewModelHash();

  @$internal
  @override
  AnalyticsViewModel create() => AnalyticsViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AnalyticsUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AnalyticsUiState>(value),
    );
  }
}

String _$analyticsViewModelHash() =>
    r'989532d9bcb00988ee2ad771e41048e29721935f';

/// ViewModel for the Firebase Analytics demo screen.
///
/// Provides methods to set default parameters and log custom events.

abstract class _$AnalyticsViewModel extends $Notifier<AnalyticsUiState> {
  AnalyticsUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AnalyticsUiState, AnalyticsUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AnalyticsUiState, AnalyticsUiState>,
              AnalyticsUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
