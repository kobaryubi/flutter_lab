import 'package:flutter_lab/domain/push_notification/push_notification_repository.dart';
import 'package:result_dart/result_dart.dart';

/// Forces a push token rotation by deleting and re-provisioning the
/// FCM token. The replacement token is delivered through
/// [PushNotificationRepository.onPushTokenRefresh].
class RotatePushTokenUseCase {
  RotatePushTokenUseCase({
    required PushNotificationRepository pushNotificationRepository,
  }) : _pushNotificationRepository = pushNotificationRepository;

  final PushNotificationRepository _pushNotificationRepository;

  /// Triggers the rotation. Use this from a debug action to verify that
  /// `onPushTokenRefresh` is wired up end-to-end.
  AsyncResult<Unit> call() => _pushNotificationRepository.rotatePushToken();
}
