import 'package:flutter_lab/domain/local_notification/local_notification_gateway.dart';
import 'package:flutter_lab/domain/local_notification/local_notification_tap.dart';

/// Returns the tap that launched the app from a terminated state via
/// the local-notifications plugin.
class GetInitialLocalNotificationTapUseCase {
  GetInitialLocalNotificationTapUseCase({
    required LocalNotificationGateway localNotificationGateway,
  }) : _localNotificationGateway = localNotificationGateway;

  final LocalNotificationGateway _localNotificationGateway;

  /// Resolves to `null` if the app was not launched by tapping a
  /// local notification.
  Future<LocalNotificationTap?> call() =>
      _localNotificationGateway.getInitialTap();
}
