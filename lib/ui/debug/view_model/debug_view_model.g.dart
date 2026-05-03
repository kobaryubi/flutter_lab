// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debug_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ViewModel for the DebugScreen storage sections.
///
/// Loads both storage backends on build, exposes save operations that
/// refresh the relevant section, and a copy-to-clipboard action that
/// posts a global snackbar on success.

@ProviderFor(DebugViewModel)
const debugViewModelProvider = DebugViewModelProvider._();

/// ViewModel for the DebugScreen storage sections.
///
/// Loads both storage backends on build, exposes save operations that
/// refresh the relevant section, and a copy-to-clipboard action that
/// posts a global snackbar on success.
final class DebugViewModelProvider
    extends $NotifierProvider<DebugViewModel, DebugUiState> {
  /// ViewModel for the DebugScreen storage sections.
  ///
  /// Loads both storage backends on build, exposes save operations that
  /// refresh the relevant section, and a copy-to-clipboard action that
  /// posts a global snackbar on success.
  const DebugViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'debugViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$debugViewModelHash();

  @$internal
  @override
  DebugViewModel create() => DebugViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DebugUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DebugUiState>(value),
    );
  }
}

String _$debugViewModelHash() => r'6696ebabaca2f7051879d1860ea6a2a485f7b4a3';

/// ViewModel for the DebugScreen storage sections.
///
/// Loads both storage backends on build, exposes save operations that
/// refresh the relevant section, and a copy-to-clipboard action that
/// posts a global snackbar on success.

abstract class _$DebugViewModel extends $Notifier<DebugUiState> {
  DebugUiState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<DebugUiState, DebugUiState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DebugUiState, DebugUiState>,
              DebugUiState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
