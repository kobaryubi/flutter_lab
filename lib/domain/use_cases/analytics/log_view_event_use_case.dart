import 'package:flutter_lab/domain/analytics/analytics_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that logs a screen view analytics event.
///
/// Encapsulates the event name and parameter structure
/// so callers only need to specify the screen name.
class LogViewEventUseCase {
  LogViewEventUseCase({
    required AnalyticsGateway analyticsGateway,
  }) : _analyticsGateway = analyticsGateway;

  final AnalyticsGateway _analyticsGateway;

  /// Logs a view event for the given [screenName].
  AsyncResult<Unit> call({required String screenName}) =>
      _analyticsGateway.logScreenView(
        screenName: screenName,
      );
}
