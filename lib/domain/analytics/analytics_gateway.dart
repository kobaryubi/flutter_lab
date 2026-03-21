import 'package:result_dart/result_dart.dart';

/// Gateway for analytics event tracking.
///
/// Abstracts the analytics SDK behind a domain-layer interface.
abstract class AnalyticsGateway {
  /// Sets default parameters that are attached to all future events.
  ///
  /// To clear a parameter, set its value to `null`.
  AsyncResult<Unit> setDefaultEventParameters({
    required Map<String, Object?> parameters,
  });

  /// Logs a custom analytics event.
  ///
  /// [name] is the event name
  /// (max 40 characters, alphanumeric + underscores).
  /// [parameters] is an optional map of event parameters
  /// (String or num values).
  AsyncResult<Unit> logEvent({
    required String name,
    Map<String, Object>? parameters,
  });

  /// Logs a screen view event.
  ///
  /// Uses the dedicated screen view API instead of generic [logEvent]
  /// because `screen_view` is a reserved event name.
  AsyncResult<Unit> logScreenView({
    required String screenName,
  });
}
