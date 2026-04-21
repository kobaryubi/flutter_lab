// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pending_deferred_deeplink_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Holds the most recent deferred deep link delivered by the Adjust SDK.
///
/// State is `null` when no link is pending. Once [consume] is called, later
/// captures are ignored — this mirrors the docs' `hasCompletedOnboarding`
/// guard so a late callback cannot re-open the link after the app has
/// finished onboarding.

@ProviderFor(PendingDeferredDeeplinkNotifier)
const pendingDeferredDeeplinkProvider =
    PendingDeferredDeeplinkNotifierProvider._();

/// Holds the most recent deferred deep link delivered by the Adjust SDK.
///
/// State is `null` when no link is pending. Once [consume] is called, later
/// captures are ignored — this mirrors the docs' `hasCompletedOnboarding`
/// guard so a late callback cannot re-open the link after the app has
/// finished onboarding.
final class PendingDeferredDeeplinkNotifierProvider
    extends $NotifierProvider<PendingDeferredDeeplinkNotifier, String?> {
  /// Holds the most recent deferred deep link delivered by the Adjust SDK.
  ///
  /// State is `null` when no link is pending. Once [consume] is called, later
  /// captures are ignored — this mirrors the docs' `hasCompletedOnboarding`
  /// guard so a late callback cannot re-open the link after the app has
  /// finished onboarding.
  const PendingDeferredDeeplinkNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pendingDeferredDeeplinkProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pendingDeferredDeeplinkNotifierHash();

  @$internal
  @override
  PendingDeferredDeeplinkNotifier create() => PendingDeferredDeeplinkNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$pendingDeferredDeeplinkNotifierHash() =>
    r'264094a773ec94fb3816f24ed3c11dc3e2f0a2ac';

/// Holds the most recent deferred deep link delivered by the Adjust SDK.
///
/// State is `null` when no link is pending. Once [consume] is called, later
/// captures are ignored — this mirrors the docs' `hasCompletedOnboarding`
/// guard so a late callback cannot re-open the link after the app has
/// finished onboarding.

abstract class _$PendingDeferredDeeplinkNotifier extends $Notifier<String?> {
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
