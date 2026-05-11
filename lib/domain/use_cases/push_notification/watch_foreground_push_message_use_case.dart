import 'dart:async';
import 'dart:io';

import 'package:flutter_lab/domain/entity/push_notification/push_message.dart';
import 'package:flutter_lab/domain/local_notification/local_notification_channel.dart';
import 'package:flutter_lab/domain/local_notification/local_notification_gateway.dart';
import 'package:flutter_lab/domain/local_notification/local_notification_message.dart';
import 'package:flutter_lab/domain/push_notification/push_notification_repository.dart';

/// Provides a stream of messages received while the app is in the
/// foreground.
///
/// On Android, each emitted message is also surfaced via the local
/// notification gateway because FCM does not auto-display foreground
/// notifications. On iOS the system handles foreground presentation
/// via UNUserNotificationCenter, so no extra work is done.
class WatchForegroundPushMessageUseCase {
  WatchForegroundPushMessageUseCase({
    required PushNotificationRepository pushNotificationRepository,
    required LocalNotificationGateway localNotificationGateway,
  }) : _pushNotificationRepository = pushNotificationRepository,
       _localNotificationGateway = localNotificationGateway;

  final PushNotificationRepository _pushNotificationRepository;
  final LocalNotificationGateway _localNotificationGateway;

  /// Returns a stream that emits each foreground push notification.
  ///
  /// On Android, fires the gateway show on each emission and passes the
  /// message through unchanged so subscribers still receive every event.
  Stream<PushMessage> call() =>
      _pushNotificationRepository.onForegroundMessage.map((message) {
        if (Platform.isAndroid) {
          unawaited(
            _localNotificationGateway.show(
              message: LocalNotificationMessage(
                id: DateTime.now().millisecondsSinceEpoch & 0x7FFFFFFF,
                title: message.title,
                body: message.body,
                channel: LocalNotificationChannel.fromId(message.channelId),
                imageUrl: message.imageUrl,
                data: message.data,
              ),
            ),
          );
        }

        return message;
      });
}
