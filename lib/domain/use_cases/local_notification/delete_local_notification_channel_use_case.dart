import 'package:flutter_lab/domain/local_notification/local_notification_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Deletes an Android notification channel by its ID.
///
/// Use this to remove legacy channels left on user devices after a rename
/// or restructure — channels whose IDs are no longer present in the
/// gateway's channel set.
class DeleteLocalNotificationChannelUseCase {
  DeleteLocalNotificationChannelUseCase({
    required LocalNotificationGateway localNotificationGateway,
  }) : _localNotificationGateway = localNotificationGateway;

  final LocalNotificationGateway _localNotificationGateway;

  /// Deletes the channel registered under [channelId]. Delegates to the
  /// gateway's `deleteNotificationChannel` method.
  AsyncResult<Unit> call({required String channelId}) =>
      _localNotificationGateway.deleteNotificationChannel(channelId: channelId);
}
