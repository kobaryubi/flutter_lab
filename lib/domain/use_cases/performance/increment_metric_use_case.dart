import 'package:flutter_lab/domain/performance/performance_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that increments a metric on an active performance trace.
class IncrementMetricUseCase {
  IncrementMetricUseCase({
    required PerformanceGateway performanceGateway,
  }) : _performanceGateway = performanceGateway;

  final PerformanceGateway _performanceGateway;

  /// Increments [metricName] by [value] on the trace identified by [traceId].
  AsyncResult<Unit> call({
    required String traceId,
    required String metricName,
    required int value,
  }) => _performanceGateway.incrementMetric(
    traceId: traceId,
    metricName: metricName,
    value: value,
  );
}
