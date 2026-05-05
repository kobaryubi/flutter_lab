import 'package:flutter_app_badge_control/flutter_app_badge_control.dart';
import 'package:flutter_lab/domain/app_badge/app_badge_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Implementation of [AppBadgeGateway] using the
/// `flutter_app_badge_control` plugin.
class FlutterAppBadgeControlAppBadgeGateway implements AppBadgeGateway {
  @override
  AsyncResult<Unit> clearBadge() async {
    try {
      await FlutterAppBadgeControl.removeBadge();

      return const Success(unit);
    } on Exception catch (exception) {
      return exception.toFailure();
    }
  }
}
