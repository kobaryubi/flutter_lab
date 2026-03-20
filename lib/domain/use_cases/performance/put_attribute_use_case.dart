import 'package:flutter_lab/domain/performance/performance_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that sets a custom attribute on an active performance trace.
class PutAttributeUseCase {
  PutAttributeUseCase({
    required PerformanceGateway performanceGateway,
  }) : _performanceGateway = performanceGateway;

  final PerformanceGateway _performanceGateway;

  /// Sets [attributeName] to [attributeValue] on the trace identified
  /// by [traceId].
  AsyncResult<Unit> call({
    required String traceId,
    required String attributeName,
    required String attributeValue,
  }) => _performanceGateway.putAttribute(
    traceId: traceId,
    attributeName: attributeName,
    attributeValue: attributeValue,
  );
}
