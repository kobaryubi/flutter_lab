import 'package:flutter_lab/domain/local_notification/local_notification_channel.dart';
import 'package:flutter_lab/domain/local_notification/local_notification_message.dart';
import 'package:result_dart/result_dart.dart';

/// Gateway interface for displaying local notifications on the device.
///
/// On Android, FCM does not display notifications while the app is in the
/// foreground; consumers must surface them through this gateway. The gateway
/// also creates the notification channels used by [show].
abstract class LocalNotificationGateway {
  /// Prepares platform resources (Android notification channels, iOS
  /// foreground presentation options). Safe to call multiple times.
  AsyncResult<Unit> initialize();

  /// Shows the local notification described by [message].
  AsyncResult<Unit> show({required LocalNotificationMessage message});

  /// Deletes the Android notification channel registered under [channelId].
  ///
  /// Use this to clean up legacy channels left on user devices after a
  /// rename or restructure — channel IDs that no longer appear in
  /// [LocalNotificationChannel]. Calling this for an unknown [channelId]
  /// is a no-op. iOS has no notification channels, so this is a no-op
  /// there.
  AsyncResult<Unit> deleteNotificationChannel({required String channelId});
}
