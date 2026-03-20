import 'package:flutter_lab/domain/performance/performance_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that stops an active custom performance trace.
class StopTraceUseCase {
  StopTraceUseCase({
    required PerformanceGateway performanceGateway,
  }) : _performanceGateway = performanceGateway;

  final PerformanceGateway _performanceGateway;

  /// Stops the trace identified by [traceId].
  AsyncResult<Unit> call({required String traceId}) =>
      _performanceGateway.stopTrace(traceId: traceId);
}
