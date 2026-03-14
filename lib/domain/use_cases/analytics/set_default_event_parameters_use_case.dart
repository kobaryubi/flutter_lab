import 'package:flutter_lab/domain/analytics/analytics_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that sets default parameters for all analytics events.
class SetDefaultEventParametersUseCase {
  SetDefaultEventParametersUseCase({
    required AnalyticsGateway analyticsGateway,
  }) : _analyticsGateway = analyticsGateway;

  final AnalyticsGateway _analyticsGateway;

  /// Sets default parameters attached to all future events.
  AsyncResult<Unit> call({
    required Map<String, Object?> parameters,
  }) => _analyticsGateway.setDefaultEventParameters(
    parameters: parameters,
  );
}
