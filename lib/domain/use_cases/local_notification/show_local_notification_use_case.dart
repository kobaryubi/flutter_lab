import 'package:flutter_lab/application/logger/logger_gateway.dart';
import 'package:flutter_lab/domain/local_notification/local_notification_gateway.dart';
import 'package:flutter_lab/domain/local_notification/local_notification_message.dart';
import 'package:result_dart/result_dart.dart';

/// Shows a local notification described by a [LocalNotificationMessage].
class ShowLocalNotificationUseCase {
  ShowLocalNotificationUseCase({
    required LocalNotificationGateway localNotificationGateway,
    required LoggerGateway logger,
  }) : _localNotificationGateway = localNotificationGateway,
       _logger = logger;

  final LocalNotificationGateway _localNotificationGateway;
  final LoggerGateway _logger;

  /// Logs the request, then delegates to the gateway's `show` method.
  AsyncResult<Unit> call({required LocalNotificationMessage message}) {
    _logger.info(
      'ShowLocalNotification: id=${message.id}, '
      'channel=${message.channel.name}, '
      'title=${message.title}, body=${message.body}, '
      'data=${message.data}',
    );

    return _localNotificationGateway.show(message: message);
  }
}
