import 'package:flutter_lab/application/logger/logger_gateway.dart';
import 'package:flutter_lab/domain/local_notification/local_notification_data.dart';
import 'package:flutter_lab/domain/local_notification/local_notification_gateway.dart';
import 'package:flutter_lab/domain/local_notification/local_notification_message.dart';
import 'package:flutter_lab/gen/pigeon/local_notification.g.dart';
import 'package:result_dart/result_dart.dart';

/// Implementation of [LocalNotificationGateway] backed by the Pigeon
/// [LocalNotificationHostApi] with a hand-written Android native side.
///
/// The native side owns the single IMPORTANCE_DEFAULT channel and creates
/// it during app startup (MainActivity), so [initialize] has nothing to do
/// here — unlike the flutter_local_notifications implementation, which had
/// to create channels from Dart.
class PigeonLocalNotificationGateway implements LocalNotificationGateway {
  /// Creates the gateway. The [logger] surfaces host API exceptions; the
  /// gateway itself never throws to its callers.
  PigeonLocalNotificationGateway({required LoggerGateway logger})
    : _logger = logger;

  final LocalNotificationHostApi _hostApi = LocalNotificationHostApi();
  final LoggerGateway _logger;

  @override
  AsyncResult<Unit> initialize() async => const Success(unit);

  @override
  AsyncResult<Unit> show({required LocalNotificationMessage message}) async {
    try {
      // The host API takes a string-to-string map (the shape of an FCM
      // data payload); non-string values are stringified here.
      final payload = message.data.map(
        (key, value) => MapEntry(key, value?.toString() ?? ''),
      );
      await _hostApi.show(
        title: message.title,
        body: message.body,
        payload: payload,
      );

      return const Success(unit);
    } on Exception catch (exception, stackTrace) {
      _logger.handle(exception: exception, stackTrace: stackTrace);

      return exception.toFailure();
    }
  }

  @override
  Future<LocalNotificationData?> getInitialLocalNotificationData() async {
    try {
      // Null means the launch intent carried no notification payload —
      // the app was opened from the launcher, a deep link, etc.
      final payload = await _hostApi.getInitialPayload();

      return payload == null ? null : LocalNotificationData(data: payload);
    } on Exception catch (exception, stackTrace) {
      _logger.handle(exception: exception, stackTrace: stackTrace);

      return null;
    }
  }

  @override
  AsyncResult<Unit> deleteNotificationChannel({
    required String channelId,
  }) async {
    // The native side owns the single foreground channel and there are no
    // legacy channels to clean up in this implementation, so this is a
    // no-op kept only to satisfy the gateway interface.
    return const Success(unit);
  }
}
