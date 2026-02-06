import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/push_notification/ui_state/push_notification_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'push_notification_view_model.g.dart';

/// ViewModel that manages push notification setup.
@riverpod
class PushNotificationViewModel extends _$PushNotificationViewModel {
  @override
  PushNotificationUiState build() => const PushNotificationUiState();

  /// Requests push notification permission and retrieves the device token.
  Future<void> requestPushNotificationPermission() async {
    final useCase = ref.read(requestPushNotificationUseCaseProvider);
    state = state.copyWith(
      permission: await AsyncValue.guard(
        () => useCase.call().getOrThrow(),
      ),
    );
  }
}
