// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pending_deeplink_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Notifier that holds a deeplink captured from an external source
/// (e.g. Adjust SDK) until the app is ready to navigate.
///
/// Typical flow: an SDK callback calls [save] with the resolved URI,
/// and a post-login listener reads the state, navigates, then calls
/// [consume] so the same deeplink is not fired twice.

@ProviderFor(PendingDeeplinkNotifier)
const pendingDeeplinkProvider = PendingDeeplinkNotifierProvider._();

/// Notifier that holds a deeplink captured from an external source
/// (e.g. Adjust SDK) until the app is ready to navigate.
///
/// Typical flow: an SDK callback calls [save] with the resolved URI,
/// and a post-login listener reads the state, navigates, then calls
/// [consume] so the same deeplink is not fired twice.
final class PendingDeeplinkNotifierProvider
    extends $NotifierProvider<PendingDeeplinkNotifier, Uri?> {
  /// Notifier that holds a deeplink captured from an external source
  /// (e.g. Adjust SDK) until the app is ready to navigate.
  ///
  /// Typical flow: an SDK callback calls [save] with the resolved URI,
  /// and a post-login listener reads the state, navigates, then calls
  /// [consume] so the same deeplink is not fired twice.
  const PendingDeeplinkNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pendingDeeplinkProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pendingDeeplinkNotifierHash();

  @$internal
  @override
  PendingDeeplinkNotifier create() => PendingDeeplinkNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Uri? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Uri?>(value),
    );
  }
}

String _$pendingDeeplinkNotifierHash() =>
    r'f0f489ffde0617cb6aff1193557b77f70c535f8d';

/// Notifier that holds a deeplink captured from an external source
/// (e.g. Adjust SDK) until the app is ready to navigate.
///
/// Typical flow: an SDK callback calls [save] with the resolved URI,
/// and a post-login listener reads the state, navigates, then calls
/// [consume] so the same deeplink is not fired twice.

abstract class _$PendingDeeplinkNotifier extends $Notifier<Uri?> {
  Uri? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Uri?, Uri?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Uri?, Uri?>,
              Uri?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
