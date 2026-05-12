import 'dart:async';
import 'dart:io';

import 'package:flutter_lab/domain/entity/push_notification/push_message.dart';
import 'package:flutter_lab/domain/local_notification/local_notification_channel.dart';
import 'package:flutter_lab/domain/local_notification/local_notification_gateway.dart';
import 'package:flutter_lab/domain/local_notification/local_notification_message.dart';
import 'package:flutter_lab/domain/push_notification/push_message_service.dart';
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
    required PushMessageService pushMessageService,
  }) : _pushNotificationRepository = pushNotificationRepository,
       _localNotificationGateway = localNotificationGateway,
       _pushMessageService = pushMessageService;

  final PushNotificationRepository _pushNotificationRepository;
  final LocalNotificationGateway _localNotificationGateway;
  final PushMessageService _pushMessageService;

  /// Returns a stream that emits each foreground push notification.
  ///
  /// On Android, fires the gateway show on each emission and passes the
  /// message through unchanged so subscribers still receive every event.
  /// Each message is first passed through [PushMessageService] so all
  /// entry points apply the same domain logic.
  Stream<PushMessage> call() => _pushNotificationRepository.onForegroundMessage
      .map((message) => _pushMessageService.handle(message: message))
      .map((message) {
        if (Platform.isAndroid) {
          unawaited(
            _localNotificationGateway.show(
              message: LocalNotificationMessage(
                id: DateTime.now().millisecondsSinceEpoch & 0x7FFFFFFF,
                title: message.notification.title,
                body: message.notification.body,
                channel: LocalNotificationChannel.fromId(message.channelId),
                imageUrl: message.imageUrl,
                badge: message.notification.badge,
                data: {'targetScreen': message.data.targetScreen},
              ),
            ),
          );
        }

        return message;
      });
}
