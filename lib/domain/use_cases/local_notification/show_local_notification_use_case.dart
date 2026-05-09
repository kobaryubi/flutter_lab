import 'package:flutter_lab/application/logger/logger_gateway.dart';
import 'package:flutter_lab/domain/local_notification/local_notification_channel.dart';
import 'package:flutter_lab/domain/local_notification/local_notification_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Shows a local notification through the specified [LocalNotificationChannel].
class ShowLocalNotificationUseCase {
  ShowLocalNotificationUseCase({
    required LocalNotificationGateway localNotificationGateway,
    required LoggerGateway logger,
  }) : _localNotificationGateway = localNotificationGateway,
       _logger = logger;

  final LocalNotificationGateway _localNotificationGateway;
  final LoggerGateway _logger;

  /// Logs the request, then delegates to the gateway's `show` method.
  AsyncResult<Unit> call({
    required int id,
    required String? title,
    required String? body,
    required LocalNotificationChannel channel,
  }) {
    _logger.info(
      'ShowLocalNotification: id=$id, channel=${channel.name}, '
      'title=$title, body=$body',
    );

    return _localNotificationGateway.show(
      id: id,
      title: title,
      body: body,
      channel: channel,
    );
  }
}
