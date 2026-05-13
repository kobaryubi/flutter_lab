import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pending_push_notification_notifier.g.dart';

/// Notifier that holds a target screen captured from a push-notification
/// tap (e.g. FCM tap on a terminated/background app) until the app is
/// ready to navigate.
///
/// Typical flow: a push-message listener calls [save] with the resolved
/// target screen, and a post-login listener reads the state, navigates,
/// then calls [consume] so the same target is not fired twice.
@Riverpod(keepAlive: true)
class PendingPushNotificationNotifier
    extends _$PendingPushNotificationNotifier {
  @override
  String? build() => null;

  /// Stores a target screen to be navigated to later.
  // ignore: use_setters_to_change_properties
  void save({required String targetScreen}) {
    state = targetScreen;
  }

  /// Clears the stored target screen after it has been handled.
  void consume() {
    state = null;
  }
}
