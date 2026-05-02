import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_lab/application/logger/logger_gateway.dart';
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
  AsyncResult<Unit> registerToken({
    required String token,
  }) async {
    log('TokenRegistration: $token');
    return const Success(unit);
  }
}
