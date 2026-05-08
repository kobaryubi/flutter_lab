import 'package:flutter_lab/domain/local_notification/local_notification_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Initializes platform resources for local notifications: Android channels
/// and iOS presentation options. Safe to call multiple times.
class InitializeLocalNotificationUseCase {
  InitializeLocalNotificationUseCase({
    required LocalNotificationGateway localNotificationGateway,
  }) : _localNotificationGateway = localNotificationGateway;

  final LocalNotificationGateway _localNotificationGateway;

  /// Delegates to the gateway's `initialize` method.
  AsyncResult<Unit> call() => _localNotificationGateway.initialize();
}
