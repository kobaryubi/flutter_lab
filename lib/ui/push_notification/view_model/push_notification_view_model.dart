import 'dart:async';

import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/domain/entity/push_notification/push_message.dart';
import 'package:flutter_lab/domain/local_notification/local_notification_channel.dart';
import 'package:flutter_lab/ui/push_notification/ui_state/push_notification_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'push_notification_view_model.g.dart';

/// ViewModel that manages push notification setup.
@riverpod
class PushNotificationViewModel extends _$PushNotificationViewModel {
  @override
  PushNotificationUiState build() {
    _loadInitialMessage();

    final openedSubscription = ref
        .read(watchOpenedPushMessageUseCaseProvider)
        .call()
        .listen((message) {
          state = state.copyWith(
            openedMessages: [...state.openedMessages, message],
          );
          unawaited(_clearAppBadge());
        });

    final foregroundSubscription = ref
        .read(watchForegroundPushMessageUseCaseProvider)
        .call()
        .listen((message) {
          state = state.copyWith(
            foregroundMessages: [...state.foregroundMessages, message],
          );
          unawaited(_showForegroundNotification(message));
        });

    ref.onDispose(() {
      openedSubscription.cancel();
      foregroundSubscription.cancel();
    });

    return const PushNotificationUiState();
  }

  /// Requests push notification permission and retrieves the device token.
  Future<void> requestPushNotificationPermission() async {
    final useCase = ref.read(requestPushNotificationUseCaseProvider);
    state = state.copyWith(
      permission: await AsyncValue.guard(
        () async => (await useCase.call()).getOrThrow(),
      ),
    );
  }

  /// Forces a push token rotation. The new token is delivered via the
  /// `onPushTokenRefresh` stream and logged through talker.
  Future<void> rotatePushToken() async {
    final useCase = ref.read(rotatePushTokenUseCaseProvider);
    final rotation = await AsyncValue.guard(() async {
      (await useCase.call()).getOrThrow();
    });

    state = state.copyWith(rotation: rotation);
  }

  /// Loads the message that opened the app from a terminated state.
  Future<void> _loadInitialMessage() async {
    final initialMessage = await AsyncValue.guard(
      () => ref.read(getInitialPushMessageUseCaseProvider).call(),
    );

    state = state.copyWith(initialMessage: initialMessage);

    if (initialMessage case AsyncData(value: final _?)) {
      unawaited(_clearAppBadge());
    }
  }

  /// Removes the app icon badge after a notification tap is handled.
  Future<void> _clearAppBadge() async {
    await ref.read(clearAppBadgeUseCaseProvider).call();
  }

  /// Surfaces a foreground FCM message as a local notification.
  ///
  /// FCM does not auto-display notifications while the app is in the
  /// foreground, so we route the message through the local notification
  /// gateway. The channel is selected from the FCM-native
  /// `notification.android.channelId` field, falling back to
  /// defaultImportance when missing or unrecognized.
  Future<void> _showForegroundNotification(PushMessage message) async {
    final useCase = ref.read(showLocalNotificationUseCaseProvider);
    await useCase.call(
      id: DateTime.now().millisecondsSinceEpoch & 0x7FFFFFFF,
      title: message.title,
      body: message.body,
      channel: LocalNotificationChannel.fromId(message.channelId),
    );
  }
}
