import 'package:flutter_lab/domain/analytics/analytics_gateway.dart';
import 'package:flutter_lab/domain/analytics/event_name.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that logs a tap analytics event.
///
/// Encapsulates the event name and parameter structure
/// so callers only need to specify the tap target.
class LogTapEventUseCase {
  LogTapEventUseCase({
    required AnalyticsGateway analyticsGateway,
  }) : _analyticsGateway = analyticsGateway;

  final AnalyticsGateway _analyticsGateway;

  /// Logs a tap event for the given [target].
  AsyncResult<Unit> call({required String target}) =>
      _analyticsGateway.logEvent(
        name: EventName.tap,
        parameters: {'target': target},
      );
}
