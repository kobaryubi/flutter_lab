// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pending_direct_deeplink_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Holds the most recent direct deep link delivered by the Adjust SDK.
///
/// State is `null` when no link is pending. Unlike the deferred flow, there
/// is no "consumed" lock — direct deep links can arrive repeatedly while
/// the app is running (each universal link / app link opens a new one).

@ProviderFor(PendingDirectDeeplinkNotifier)
const pendingDirectDeeplinkProvider = PendingDirectDeeplinkNotifierProvider._();

/// Holds the most recent direct deep link delivered by the Adjust SDK.
///
/// State is `null` when no link is pending. Unlike the deferred flow, there
/// is no "consumed" lock — direct deep links can arrive repeatedly while
/// the app is running (each universal link / app link opens a new one).
final class PendingDirectDeeplinkNotifierProvider
    extends $NotifierProvider<PendingDirectDeeplinkNotifier, String?> {
  /// Holds the most recent direct deep link delivered by the Adjust SDK.
  ///
  /// State is `null` when no link is pending. Unlike the deferred flow, there
  /// is no "consumed" lock — direct deep links can arrive repeatedly while
  /// the app is running (each universal link / app link opens a new one).
  const PendingDirectDeeplinkNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pendingDirectDeeplinkProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pendingDirectDeeplinkNotifierHash();

  @$internal
  @override
  PendingDirectDeeplinkNotifier create() => PendingDirectDeeplinkNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$pendingDirectDeeplinkNotifierHash() =>
    r'7f258c14fa39d2b65ee1eefa4fb6ba6a85305270';

/// Holds the most recent direct deep link delivered by the Adjust SDK.
///
/// State is `null` when no link is pending. Unlike the deferred flow, there
/// is no "consumed" lock — direct deep links can arrive repeatedly while
/// the app is running (each universal link / app link opens a new one).

abstract class _$PendingDirectDeeplinkNotifier extends $Notifier<String?> {
  String? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<String?, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String?, String?>,
              String?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
