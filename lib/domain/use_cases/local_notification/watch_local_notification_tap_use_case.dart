import 'package:flutter_lab/domain/local_notification/local_notification_data.dart';
import 'package:flutter_lab/domain/local_notification/local_notification_gateway.dart';

/// Provides a stream of taps on locally-displayed notifications while the
/// app process is alive (foreground or background).
///
/// Terminated-state launches are not covered here; they are resolved once
/// at startup via `LocalNotificationGateway.getInitialLocalNotificationData`.
class WatchLocalNotificationTapUseCase {
  WatchLocalNotificationTapUseCase({
    required LocalNotificationGateway localNotificationGateway,
  }) : _localNotificationGateway = localNotificationGateway;

  final LocalNotificationGateway _localNotificationGateway;

  /// Returns the gateway's notification tap stream.
  Stream<LocalNotificationData> call() =>
      _localNotificationGateway.onNotificationTap;
}
