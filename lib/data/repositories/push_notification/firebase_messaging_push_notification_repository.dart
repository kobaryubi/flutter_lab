import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_lab/application/logger/logger_gateway.dart';
import 'package:flutter_lab/domain/entity/push_notification/push_message.dart';
import 'package:flutter_lab/domain/push_notification/push_notification_repository.dart';
import 'package:result_dart/result_dart.dart';

/// Implementation of [PushNotificationRepository] using
/// [FirebaseMessaging] SDK directly.
class FirebaseMessagingPushNotificationRepository
    implements PushNotificationRepository {
  /// Creates a [FirebaseMessagingPushNotificationRepository] that logs
  /// push-token refresh events through the given [logger].
  FirebaseMessagingPushNotificationRepository({
    required LoggerGateway logger,
  }) : _logger = logger;

  final FirebaseMessaging _instance = FirebaseMessaging.instance;
  final LoggerGateway _logger;

  @override
  Future<String> requestPermission() async {
    final settings = await _instance.requestPermission();
    return settings.authorizationStatus.toString();
  }

  @override
  Future<String?> getApnsToken() => _instance.getAPNSToken();

  @override
  Future<String?> getPushToken() => _instance.getToken();

  @override
  Stream<String> get onPushTokenRefresh =>
      _instance.onTokenRefresh.map((token) {
        _logger.info('PushTokenRefresh: $token');

        return token;
      });

  @override
  AsyncResult<Unit> rotatePushToken() async {
    try {
      await _instance.deleteToken();
      await _instance.getToken();

      return const Success(unit);
    } on Exception catch (exception) {
      return exception.toFailure();
    }
  }

  @override
  AsyncResult<Unit> registerToken({
    required String token,
  }) async {
    log('TokenRegistration: $token');
    return const Success(unit);
  }

  @override
  Future<PushMessage?> getInitialMessage() async {
    final message = await _instance.getInitialMessage();

    if (message == null) return null;

    _logger.info('InitialPushMessage raw: ${message.toMap()}');
    final pushMessage = _toPushMessage(message);
    _logger.info('InitialPushMessage: $pushMessage');

    return pushMessage;
  }

  @override
  Stream<PushMessage> get onMessageOpenedApp =>
      FirebaseMessaging.onMessageOpenedApp.map((message) {
        _logger.info('OpenedPushMessage raw: ${message.toMap()}');
        final pushMessage = _toPushMessage(message);
        _logger.info('OpenedPushMessage: $pushMessage');

        return pushMessage;
      });

  @override
  Stream<PushMessage> get onForegroundMessage =>
      FirebaseMessaging.onMessage.map((message) {
        _logger.info('ForegroundPushMessage raw: ${message.toMap()}');
        final pushMessage = _toPushMessage(message);
        _logger.info('ForegroundPushMessage: $pushMessage');

        return pushMessage;
      });
}

/// Maps a [RemoteMessage] from FCM into the domain-layer [PushMessage].
PushMessage _toPushMessage(RemoteMessage message) => PushMessage(
  messageId: message.messageId,
  title: message.notification?.title,
  body: message.notification?.body,
  data: message.data,
);
