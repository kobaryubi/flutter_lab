import 'package:flutter_lab/domain/local_notification/local_notification_channel.dart';
import 'package:flutter_lab/domain/local_notification/local_notification_gateway.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:result_dart/result_dart.dart';

/// Heads-up + sound. Use for time-critical notifications such as alerts the
/// user must see immediately.
const _highImportanceChannel = AndroidNotificationChannel(
  highImportanceChannelId,
  'High Importance Notifications',
  description: 'Urgent notifications shown as heads-up with sound.',
  importance: Importance.high,
);

/// Sound, no heads-up. Standard notifications that should make a sound but
/// not interrupt the user's current task.
const _defaultImportanceChannel = AndroidNotificationChannel(
  defaultImportanceChannelId,
  'Default Notifications',
  description: 'Standard notifications shown silently in the status bar.',
);

/// No sound, visible in the shade. Use for low-priority updates the user
/// can check on their own time.
const _lowImportanceChannel = AndroidNotificationChannel(
  lowImportanceChannelId,
  'Low Importance Notifications',
  description: 'Quiet notifications shown without sound.',
  importance: Importance.low,
);

/// Collapsed in the shade, no badge, no sound. Use for background activity
/// the user rarely needs to see.
const _minImportanceChannel = AndroidNotificationChannel(
  minImportanceChannelId,
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

/// Maps a domain-layer [LocalNotificationChannel] to the const Android
/// channel registered for that importance level.
AndroidNotificationChannel _channelFor(LocalNotificationChannel channel) =>
    switch (channel) {
      LocalNotificationChannel.highImportance => _highImportanceChannel,
      LocalNotificationChannel.defaultImportance => _defaultImportanceChannel,
      LocalNotificationChannel.lowImportance => _lowImportanceChannel,
      LocalNotificationChannel.minImportance => _minImportanceChannel,
    };

/// Implementation of [LocalNotificationGateway] backed by the
/// `flutter_local_notifications` plugin.
class FlutterLocalNotificationsLocalNotificationGateway
    implements LocalNotificationGateway {
  final FlutterLocalNotificationsPlugin _plugin =
      FlutterLocalNotificationsPlugin();

  @override
  AsyncResult<Unit> initialize() async {
    try {
      const initializationSettings = InitializationSettings(
        android: AndroidInitializationSettings(_androidIcon),
      );
      await _plugin.initialize(settings: initializationSettings);

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
    required LocalNotificationChannel channel,
  }) async {
    try {
      final androidChannel = _channelFor(channel);
      await _plugin.show(
        id: id,
        title: title,
        body: body,
        notificationDetails: NotificationDetails(
          android: AndroidNotificationDetails(
            androidChannel.id,
            androidChannel.name,
            channelDescription: androidChannel.description,
            importance: androidChannel.importance,
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
