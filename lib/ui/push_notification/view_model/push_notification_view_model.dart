import 'dart:async';

import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/push_notification/ui_state/push_notification_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'push_notification_view_model.g.dart';

/// ViewModel that manages push notification setup.
@riverpod
class PushNotificationViewModel extends _$PushNotificationViewModel {
  @override
  PushNotificationUiState build() {
    _loadInitialMessage();

    final foregroundSubscription = ref
        .read(watchForegroundPushMessageUseCaseProvider)
        .call()
        .listen((message) {
          state = state.copyWith(
            foregroundMessages: [...state.foregroundMessages, message],
          );
        });

    ref.onDispose(foregroundSubscription.cancel);

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

  /// Deletes the legacy `general_notifications` Android channel as a
  /// sample of channel cleanup after a rename or restructure.
  Future<void> deleteGeneralNotificationsChannel() async {
    final useCase = ref.read(deleteLocalNotificationChannelUseCaseProvider);
    final channelDeletion = await AsyncValue.guard(() async {
      (await useCase.call(channelId: 'general_notifications')).getOrThrow();
    });

    state = state.copyWith(channelDeletion: channelDeletion);
  }

  /// Loads the message that opened the app from a terminated state.
  ///
  /// Reads the pre-warmed [initialPushMessageProvider] (resolved before
  /// `runApp`) instead of calling the use case directly, so the use case
  /// and its side effects run exactly once per launch.
  Future<void> _loadInitialMessage() async {
    final initialMessage = await AsyncValue.guard(
      () => ref.read(initialPushMessageProvider.future),
    );

    state = state.copyWith(initialMessage: initialMessage);
  }
}
