import 'package:flutter_lab/domain/analytics/analytics_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that sets a user property for analytics.
class SetUserPropertyUseCase {
  SetUserPropertyUseCase({
    required AnalyticsGateway analyticsGateway,
  }) : _analyticsGateway = analyticsGateway;

  final AnalyticsGateway _analyticsGateway;

  /// Sets a user property with the given [name] and [value].
  AsyncResult<Unit> call({
    required String name,
    required String? value,
  }) => _analyticsGateway.setUserProperty(
    name: name,
    value: value,
  );
}
