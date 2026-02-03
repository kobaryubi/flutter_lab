import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_lab/domain/push_notification/push_notification_repository.dart';
import 'package:result_dart/result_dart.dart';

/// Implementation of [PushNotificationRepository] using
/// [FirebaseMessaging] SDK directly.
class FirebaseMessagingPushNotificationRepository
    implements PushNotificationRepository {
  final FirebaseMessaging _instance = FirebaseMessaging.instance;

  @override
  Future<String> requestPermission() async {
    final settings = await _instance.requestPermission();
    return settings.authorizationStatus.toString();
  }

  @override
  Future<String?> getApnsToken() => _instance.getAPNSToken();

  @override
  Future<String?> getDeviceToken() => _instance.getToken();

  @override
  Stream<String> get onTokenRefresh => _instance.onTokenRefresh;

  @override
  AsyncResult<Unit> registerToken({
    required String token,
  }) async {
    log('TokenRegistration: $token');
    return const Success(unit);
  }
}
