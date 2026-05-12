import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_lab/data/mapper/push_notification/push_message_mapper.auto_mappr.dart';
import 'package:flutter_lab/domain/entity/push_notification/push_message.dart';
import 'package:flutter_lab/domain/entity/push_notification/push_message_data.dart';
import 'package:flutter_lab/domain/entity/push_notification/push_notification.dart';

/// Maps the FCM [RemoteMessage] into the domain-layer [PushMessage].
@AutoMappr([
  MapType<RemoteMessage, PushMessage>(
    fields: [
      Field.custom('notification', custom: PushMessageMapper.notificationFrom),
      Field.custom('channelId', custom: PushMessageMapper.channelIdFrom),
      Field.custom('imageUrl', custom: PushMessageMapper.imageUrlFrom),
      Field.custom('data', custom: PushMessageMapper.dataFrom),
    ],
  ),
])
class PushMessageMapper extends $PushMessageMapper {
  const PushMessageMapper();

  /// Builds a [PushNotification] from the FCM remote notification block,
  /// falling back to empty strings for data-only messages.
  static PushNotification notificationFrom(RemoteMessage source) =>
      PushNotification(
        title: source.notification?.title ?? '',
        body: source.notification?.body ?? '',
      );

  /// Reads channelId from the deep FCM Android notification path.
  static String? channelIdFrom(RemoteMessage source) =>
      source.notification?.android?.channelId;

  /// Reads imageUrl from the deep FCM Android notification path.
  static String? imageUrlFrom(RemoteMessage source) =>
      source.notification?.android?.imageUrl;

  /// Builds a [PushMessageData] from the FCM data map, falling back to
  /// an empty `targetScreen` when the payload does not specify one.
  static PushMessageData dataFrom(RemoteMessage source) => PushMessageData(
    targetScreen: source.data['targetScreen'] as String? ?? '',
  );
}
