import 'package:result_dart/result_dart.dart';

/// Gateway interface for displaying local notifications on the device.
///
/// On Android, FCM does not display notifications while the app is in the
/// foreground; consumers must surface them through this gateway. The gateway
/// also creates the high-importance channel required for heads-up display.
abstract class LocalNotificationGateway {
  /// Prepares platform resources (Android notification channel, iOS
  /// foreground presentation options). Safe to call multiple times.
  AsyncResult<Unit> initialize();

  /// Shows a heads-up notification with the given [id], [title], and [body].
  AsyncResult<Unit> show({
    required int id,
    required String? title,
    required String? body,
  });
}
