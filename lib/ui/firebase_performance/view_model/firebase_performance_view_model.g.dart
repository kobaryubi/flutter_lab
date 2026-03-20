// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_performance_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel for the Firebase Performance custom code traces demo screen.
///
/// Provides methods to start/stop traces, increment metrics,
/// and set custom attributes.

@ProviderFor(FirebasePerformanceViewModel)
const firebasePerformanceViewModelProvider =
    FirebasePerformanceViewModelProvider._();

/// ViewModel for the Firebase Performance custom code traces demo screen.
///
/// Provides methods to start/stop traces, increment metrics,
/// and set custom attributes.
final class FirebasePerformanceViewModelProvider
    extends
        $NotifierProvider<
          FirebasePerformanceViewModel,
          FirebasePerformanceUiState
        > {
  /// ViewModel for the Firebase Performance custom code traces demo screen.
  ///
  /// Provides methods to start/stop traces, increment metrics,
  /// and set custom attributes.
  const FirebasePerformanceViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'firebasePerformanceViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$firebasePerformanceViewModelHash();

  @$internal
  @override
  FirebasePerformanceViewModel create() => FirebasePerformanceViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FirebasePerformanceUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FirebasePerformanceUiState>(value),
    );
  }
}

String _$firebasePerformanceViewModelHash() =>
    r'0541459fa07b7459911014e1069f19a25231178c';

/// ViewModel for the Firebase Performance custom code traces demo screen.
///
/// Provides methods to start/stop traces, increment metrics,
/// and set custom attributes.

abstract class _$FirebasePerformanceViewModel
    extends $Notifier<FirebasePerformanceUiState> {
  FirebasePerformanceUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<FirebasePerformanceUiState, FirebasePerformanceUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                FirebasePerformanceUiState,
                FirebasePerformanceUiState
              >,
              FirebasePerformanceUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
