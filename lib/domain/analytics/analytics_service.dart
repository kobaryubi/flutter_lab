import 'package:flutter_lab/domain/analytics/analytics_gateway.dart';
import 'package:flutter_lab/domain/analytics/event_name.dart';
import 'package:result_dart/result_dart.dart';

/// Domain service that provides typed analytics event methods.
///
/// Wraps [AnalyticsGateway] with methods that enforce
/// the parameter schema defined in the specification.
class AnalyticsService {
  AnalyticsService({
    required AnalyticsGateway analyticsGateway,
  }) : _analyticsGateway = analyticsGateway;

  final AnalyticsGateway _analyticsGateway;

  /// Logs a MAX ad event with the fixed parameter schema.
  AsyncResult<Unit> logMaxAdEvent({
    required String adUnitId,
    required String adFormat,
    required String placement,
  }) => _analyticsGateway.logEvent(
    name: EventName.maxAdEvent,
    parameters: {
      'ad_unit_id': adUnitId,
      'ad_format': adFormat,
      'placement': placement,
    },
  );
}
