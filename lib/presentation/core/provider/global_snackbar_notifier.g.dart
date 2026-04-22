// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_snackbar_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Notifier that controls the global snackbar overlay.
///
/// Holds the currently visible message; `null` when nothing is shown.

@ProviderFor(GlobalSnackbarNotifier)
const globalSnackbarProvider = GlobalSnackbarNotifierProvider._();

/// Notifier that controls the global snackbar overlay.
///
/// Holds the currently visible message; `null` when nothing is shown.
final class GlobalSnackbarNotifierProvider
    extends $NotifierProvider<GlobalSnackbarNotifier, SnackbarMessage?> {
  /// Notifier that controls the global snackbar overlay.
  ///
  /// Holds the currently visible message; `null` when nothing is shown.
  const GlobalSnackbarNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'globalSnackbarProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$globalSnackbarNotifierHash();

  @$internal
  @override
  GlobalSnackbarNotifier create() => GlobalSnackbarNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SnackbarMessage? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SnackbarMessage?>(value),
    );
  }
}

String _$globalSnackbarNotifierHash() =>
    r'e122355d4d310a588e2591cd94454a66dec924c7';

/// Notifier that controls the global snackbar overlay.
///
/// Holds the currently visible message; `null` when nothing is shown.

abstract class _$GlobalSnackbarNotifier extends $Notifier<SnackbarMessage?> {
  SnackbarMessage? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<SnackbarMessage?, SnackbarMessage?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SnackbarMessage?, SnackbarMessage?>,
              SnackbarMessage?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
