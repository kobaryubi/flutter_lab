import 'package:flutter_lab/application/logger/logger_gateway.dart';
import 'package:flutter_lab/domain/app_badge/app_badge_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Clears the application icon badge.
class ClearAppBadgeUseCase {
  ClearAppBadgeUseCase({
    required AppBadgeGateway appBadgeGateway,
    required LoggerGateway logger,
  }) : _appBadgeGateway = appBadgeGateway,
       _logger = logger;

  final AppBadgeGateway _appBadgeGateway;
  final LoggerGateway _logger;

  /// Removes the badge from the application icon.
  AsyncResult<Unit> call() async {
    _logger.info('ClearAppBadge: requested');
    final result = await _appBadgeGateway.clearBadge();

    return result
        .onSuccess((_) => _logger.info('ClearAppBadge: success'))
        .onFailure(
          (exception) =>
              _logger.handle(exception: exception, message: 'ClearAppBadge'),
        );
  }
}
