import 'package:flutter_lab/domain/analytics/analytics_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that logs a custom analytics event.
class LogEventUseCase {
  LogEventUseCase({
    required AnalyticsGateway analyticsGateway,
  }) : _analyticsGateway = analyticsGateway;

  final AnalyticsGateway _analyticsGateway;

  /// Logs a custom event with the given [name] and [parameters].
  AsyncResult<Unit> call({
    required String name,
    Map<String, Object>? parameters,
  }) => _analyticsGateway.logEvent(
    name: name,
    parameters: parameters,
  );
}
