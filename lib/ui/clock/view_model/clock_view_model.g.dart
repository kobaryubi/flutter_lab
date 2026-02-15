// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clock_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel for the clock screen.

@ProviderFor(ClockViewModel)
const clockViewModelProvider = ClockViewModelProvider._();

/// ViewModel for the clock screen.
final class ClockViewModelProvider
    extends $NotifierProvider<ClockViewModel, ClockUiState> {
  /// ViewModel for the clock screen.
  const ClockViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clockViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clockViewModelHash();

  @$internal
  @override
  ClockViewModel create() => ClockViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ClockUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ClockUiState>(value),
    );
  }
}

String _$clockViewModelHash() => r'd867f4a0c63c89bb38236a6199ddce50025cc5d1';

/// ViewModel for the clock screen.

abstract class _$ClockViewModel extends $Notifier<ClockUiState> {
  ClockUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ClockUiState, ClockUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ClockUiState, ClockUiState>,
              ClockUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
