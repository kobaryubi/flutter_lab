import 'package:result_dart/result_dart.dart';

/// Gateway for Firebase Performance custom code traces.
///
/// Abstracts the performance monitoring SDK behind a domain-layer interface.
abstract class PerformanceGateway {
  /// Starts a new custom trace with the given [name].
  ///
  /// Returns the trace identifier for subsequent operations.
  AsyncResult<String> startTrace({required String name});

  /// Stops the trace identified by [traceId].
  AsyncResult<Unit> stopTrace({required String traceId});

  /// Increments a metric on the trace identified by [traceId].
  AsyncResult<Unit> incrementMetric({
    required String traceId,
    required String metricName,
    required int value,
  });

  /// Sets a custom attribute on the trace identified by [traceId].
  AsyncResult<Unit> putAttribute({
    required String traceId,
    required String attributeName,
    required String attributeValue,
  });

  /// Cancels and removes the trace identified by [traceId].
  ///
  /// Use this to clean up orphaned traces when an error occurs
  /// between [startTrace] and [stopTrace].
  AsyncResult<Unit> cancelTrace({required String traceId});
}
