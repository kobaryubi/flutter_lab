import 'package:flutter_lab/domain/performance/performance_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that starts a custom performance trace.
class StartTraceUseCase {
  StartTraceUseCase({
    required PerformanceGateway performanceGateway,
  }) : _performanceGateway = performanceGateway;

  final PerformanceGateway _performanceGateway;

  /// Starts a trace with the given [name] and returns the trace identifier.
  AsyncResult<String> call({required String name}) =>
      _performanceGateway.startTrace(name: name);
}
