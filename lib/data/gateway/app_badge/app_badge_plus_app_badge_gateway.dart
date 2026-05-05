import 'package:app_badge_plus/app_badge_plus.dart';
import 'package:flutter_lab/domain/app_badge/app_badge_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Implementation of [AppBadgeGateway] using the `app_badge_plus` plugin.
class AppBadgePlusAppBadgeGateway implements AppBadgeGateway {
  @override
  AsyncResult<Unit> clearBadge() async {
    try {
      await AppBadgePlus.updateBadge(0);

      return const Success(unit);
    } on Exception catch (exception) {
      return exception.toFailure();
    }
  }
}
