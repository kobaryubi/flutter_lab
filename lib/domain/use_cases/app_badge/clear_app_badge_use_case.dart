import 'package:flutter_lab/domain/app_badge/app_badge_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Clears the application icon badge.
class ClearAppBadgeUseCase {
  ClearAppBadgeUseCase({
    required AppBadgeGateway appBadgeGateway,
  }) : _appBadgeGateway = appBadgeGateway;

  final AppBadgeGateway _appBadgeGateway;

  /// Removes the badge from the application icon.
  AsyncResult<Unit> call() => _appBadgeGateway.clearBadge();
}
