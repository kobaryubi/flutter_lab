import 'package:firebase_performance/firebase_performance.dart';
import 'package:flutter_lab/domain/performance/performance_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Firebase Performance implementation of [PerformanceGateway].
///
/// Manages active traces in a map keyed by trace name.
class FirebasePerformanceGateway implements PerformanceGateway {
  final FirebasePerformance _firebasePerformance = FirebasePerformance.instance;

  final Map<String, Trace> _activeTraces = {};

  @override
  AsyncResult<String> startTrace({required String name}) async {
    if (_activeTraces.containsKey(name)) {
      return Failure(
        Exception('Trace already active: $name'),
      );
    }

    try {
      final trace = _firebasePerformance.newTrace(name);
      await trace.start();
      _activeTraces[name] = trace;

      return Success(name);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  @override
  AsyncResult<Unit> stopTrace({required String traceId}) async {
    try {
      final trace = _activeTraces.remove(traceId);

      if (trace == null) {
        return Failure(
          Exception('Trace not found: $traceId'),
        );
      }

      await trace.stop();

      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  @override
  AsyncResult<Unit> incrementMetric({
    required String traceId,
    required String metricName,
    required int value,
  }) async {
    try {
      final trace = _activeTraces[traceId];

      if (trace == null) {
        return Failure(
          Exception('Trace not found: $traceId'),
        );
      }

      trace.incrementMetric(metricName, value);

      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  @override
  AsyncResult<Unit> putAttribute({
    required String traceId,
    required String attributeName,
    required String attributeValue,
  }) async {
    try {
      final trace = _activeTraces[traceId];

      if (trace == null) {
        return Failure(
          Exception('Trace not found: $traceId'),
        );
      }

      trace.putAttribute(attributeName, attributeValue);

      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  @override
  AsyncResult<Unit> cancelTrace({required String traceId}) async {
    final trace = _activeTraces.remove(traceId);

    return trace == null
        ? Failure(Exception('Trace not found: $traceId'))
        : const Success(unit);
  }
}
