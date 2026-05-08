import 'package:flutter_lab/domain/local_notification/local_notification_channel.dart';
import 'package:flutter_lab/domain/local_notification/local_notification_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Shows a local notification through the specified [LocalNotificationChannel].
class ShowLocalNotificationUseCase {
  ShowLocalNotificationUseCase({
    required LocalNotificationGateway localNotificationGateway,
  }) : _localNotificationGateway = localNotificationGateway;

  final LocalNotificationGateway _localNotificationGateway;

  /// Delegates to the gateway's `show` method.
  AsyncResult<Unit> call({
    required int id,
    required String? title,
    required String? body,
    required LocalNotificationChannel channel,
  }) => _localNotificationGateway.show(
    id: id,
    title: title,
    body: body,
    channel: channel,
  );
}
