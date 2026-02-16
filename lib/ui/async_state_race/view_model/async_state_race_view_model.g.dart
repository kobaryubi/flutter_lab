// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'async_state_race_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel demonstrating async state race conditions.
///
/// Shows the difference between the buggy pattern (stale state capture)
/// and the correct pattern (await first, then read state).

@ProviderFor(AsyncStateRaceViewModel)
const asyncStateRaceViewModelProvider = AsyncStateRaceViewModelProvider._();

/// ViewModel demonstrating async state race conditions.
///
/// Shows the difference between the buggy pattern (stale state capture)
/// and the correct pattern (await first, then read state).
final class AsyncStateRaceViewModelProvider
    extends $NotifierProvider<AsyncStateRaceViewModel, AsyncStateRaceUiState> {
  /// ViewModel demonstrating async state race conditions.
  ///
  /// Shows the difference between the buggy pattern (stale state capture)
  /// and the correct pattern (await first, then read state).
  const AsyncStateRaceViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'asyncStateRaceViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$asyncStateRaceViewModelHash();

  @$internal
  @override
  AsyncStateRaceViewModel create() => AsyncStateRaceViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncStateRaceUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncStateRaceUiState>(value),
    );
  }
}

String _$asyncStateRaceViewModelHash() =>
    r'647405c17cbbd9978e9b275ea53a895e05fe571e';

/// ViewModel demonstrating async state race conditions.
///
/// Shows the difference between the buggy pattern (stale state capture)
/// and the correct pattern (await first, then read state).

abstract class _$AsyncStateRaceViewModel
    extends $Notifier<AsyncStateRaceUiState> {
  AsyncStateRaceUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncStateRaceUiState, AsyncStateRaceUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncStateRaceUiState, AsyncStateRaceUiState>,
              AsyncStateRaceUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
