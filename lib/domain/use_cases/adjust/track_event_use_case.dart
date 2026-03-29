import 'package:flutter_lab/domain/adjust/adjust_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that tracks an event via the Adjust SDK.
class TrackEventUseCase {
  TrackEventUseCase({
    required AdjustGateway adjustGateway,
  }) : _adjustGateway = adjustGateway;

  final AdjustGateway _adjustGateway;

  /// Tracks an event with the given [eventToken].
  AsyncResult<Unit> call({required String eventToken}) =>
      _adjustGateway.trackEvent(eventToken: eventToken);
}
