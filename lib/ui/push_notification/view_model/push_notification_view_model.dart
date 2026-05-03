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

    final openedSubscription = ref
        .read(watchOpenedPushMessageUseCaseProvider)
        .call()
        .listen((message) {
          state = state.copyWith(
            openedMessages: [...state.openedMessages, message],
          );
        });

    final foregroundSubscription = ref
        .read(watchForegroundPushMessageUseCaseProvider)
        .call()
        .listen((message) {
          state = state.copyWith(
            foregroundMessages: [...state.foregroundMessages, message],
          );
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
      () => ref.read(watchInitialPushMessageUseCaseProvider).call(),
    );

    state = state.copyWith(initialMessage: initialMessage);
  }
}
