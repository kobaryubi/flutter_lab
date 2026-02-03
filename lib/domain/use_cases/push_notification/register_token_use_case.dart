import 'package:flutter_lab/domain/push_notification/push_notification_repository.dart';
import 'package:result_dart/result_dart.dart';

/// Registers a push notification token with the backend.
class RegisterTokenUseCase {
  RegisterTokenUseCase({
    required PushNotificationRepository pushNotificationRepository,
  }) : _pushNotificationRepository = pushNotificationRepository;

  final PushNotificationRepository _pushNotificationRepository;

  /// Sends the [token] to the server for registration.
  AsyncResult<Unit> call({required String token}) =>
      _pushNotificationRepository.registerToken(token: token);
}
