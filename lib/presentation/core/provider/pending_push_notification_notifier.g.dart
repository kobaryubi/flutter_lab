// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pending_push_notification_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Notifier that holds a target screen captured from a push-notification
/// tap (e.g. FCM tap on a terminated/background app) until the app is
/// ready to navigate.
///
/// Typical flow: a push-message listener calls [save] with the resolved
/// target screen, and a post-login listener reads the state, navigates,
/// then calls [consume] so the same target is not fired twice.

@ProviderFor(PendingPushNotificationNotifier)
const pendingPushNotificationProvider =
    PendingPushNotificationNotifierProvider._();

/// Notifier that holds a target screen captured from a push-notification
/// tap (e.g. FCM tap on a terminated/background app) until the app is
/// ready to navigate.
///
/// Typical flow: a push-message listener calls [save] with the resolved
/// target screen, and a post-login listener reads the state, navigates,
/// then calls [consume] so the same target is not fired twice.
final class PendingPushNotificationNotifierProvider
    extends $NotifierProvider<PendingPushNotificationNotifier, String?> {
  /// Notifier that holds a target screen captured from a push-notification
  /// tap (e.g. FCM tap on a terminated/background app) until the app is
  /// ready to navigate.
  ///
  /// Typical flow: a push-message listener calls [save] with the resolved
  /// target screen, and a post-login listener reads the state, navigates,
  /// then calls [consume] so the same target is not fired twice.
  const PendingPushNotificationNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pendingPushNotificationProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pendingPushNotificationNotifierHash();

  @$internal
  @override
  PendingPushNotificationNotifier create() => PendingPushNotificationNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$pendingPushNotificationNotifierHash() =>
    r'f1e7d3b2a36987efe4fbdb31cd1cfe43340c4a65';

/// Notifier that holds a target screen captured from a push-notification
/// tap (e.g. FCM tap on a terminated/background app) until the app is
/// ready to navigate.
///
/// Typical flow: a push-message listener calls [save] with the resolved
/// target screen, and a post-login listener reads the state, navigates,
/// then calls [consume] so the same target is not fired twice.

abstract class _$PendingPushNotificationNotifier extends $Notifier<String?> {
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
