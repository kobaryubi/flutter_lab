import 'dart:developer';

import 'package:flutter_lab/domain/entity/push_notification/push_notification_permission.dart';
import 'package:flutter_lab/domain/push_notification/push_notification_repository.dart';
import 'package:result_dart/result_dart.dart';

/// Orchestrates the multi-step push notification setup:
/// request permission, retrieve tokens, and return the result.
class RequestPushNotificationUseCase {
  RequestPushNotificationUseCase({
    required PushNotificationRepository pushNotificationRepository,
  }) : _pushNotificationRepository = pushNotificationRepository;

  final PushNotificationRepository _pushNotificationRepository;

  /// Runs the full messaging setup sequence and returns the result.
  AsyncResult<PushNotificationPermission> call() async {
    try {
      final authorizationStatus = await _pushNotificationRepository
          .requestPermission();
      log(
        'notificationSettings.authorizationStatus: $authorizationStatus',
      );

      final apnsToken = await _pushNotificationRepository.getApnsToken();
      log('apnsToken: $apnsToken');

      final deviceToken = await _pushNotificationRepository.getDeviceToken();
      log('deviceToken: $deviceToken');

      return PushNotificationPermission(
        authorizationStatus: authorizationStatus,
        deviceToken: deviceToken,
      ).toSuccess();
    } on Exception catch (exception) {
      return exception.toFailure();
    }
  }
}
