import 'package:flutter_lab/domain/local_notification/local_notification_gateway.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:result_dart/result_dart.dart';

/// Heads-up + sound. Use for time-critical notifications such as alerts the
/// user must see immediately.
const _highImportanceChannel = AndroidNotificationChannel(
  'high_importance_channel',
  'High Importance Notifications',
  description: 'Urgent notifications shown as heads-up with sound.',
  importance: Importance.high,
);

/// Sound, no heads-up. Standard notifications that should make a sound but
/// not interrupt the user's current task.
const _defaultImportanceChannel = AndroidNotificationChannel(
  'default_importance_channel',
  'Default Notifications',
  description: 'Standard notifications shown silently in the status bar.',
);

/// No sound, visible in the shade. Use for low-priority updates the user
/// can check on their own time.
const _lowImportanceChannel = AndroidNotificationChannel(
  'low_importance_channel',
  'Low Importance Notifications',
  description: 'Quiet notifications shown without sound.',
  importance: Importance.low,
);

/// Collapsed in the shade, no badge, no sound. Use for background activity
/// the user rarely needs to see.
const _minImportanceChannel = AndroidNotificationChannel(
  'min_importance_channel',
  'Minimum Importance Notifications',
  description: 'Background notifications shown collapsed in the shade.',
  importance: Importance.min,
);

/// All channels created on app startup. Adding a channel here is enough for
/// it to appear in the OS notification settings.
const _channels = <AndroidNotificationChannel>[
  _highImportanceChannel,
  _defaultImportanceChannel,
  _lowImportanceChannel,
  _minImportanceChannel,
];

// TODO(masahiko): replace with a dedicated monochrome notification icon.
const _androidIcon = 'launch_background';

/// Implementation of [LocalNotificationGateway] backed by the
/// `flutter_local_notifications` plugin.
class FlutterLocalNotificationsLocalNotificationGateway
    implements LocalNotificationGateway {
  final FlutterLocalNotificationsPlugin _plugin =
      FlutterLocalNotificationsPlugin();

  @override
  AsyncResult<Unit> initialize() async {
    try {
      final androidPlugin = _plugin
          .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin
          >();

      for (final channel in _channels) {
        await androidPlugin?.createNotificationChannel(channel);
      }

      return const Success(unit);
    } on Exception catch (exception) {
      return exception.toFailure();
    }
  }

  @override
  AsyncResult<Unit> show({
    required int id,
    required String? title,
    required String? body,
  }) async {
    try {
      const channel = _highImportanceChannel;
      await _plugin.show(
        id: id,
        title: title,
        body: body,
        notificationDetails: NotificationDetails(
          android: AndroidNotificationDetails(
            channel.id,
            channel.name,
            channelDescription: channel.description,
            importance: channel.importance,
            icon: _androidIcon,
          ),
        ),
      );

      return const Success(unit);
    } on Exception catch (exception) {
      return exception.toFailure();
    }
  }
}
