import 'package:flutter_lab/domain/clock/clock_gateway.dart';

/// Use case that returns the current time via [ClockGateway].
class GetCurrentTimeUseCase {
  GetCurrentTimeUseCase({required ClockGateway clockGateway})
    : _clockGateway = clockGateway;

  final ClockGateway _clockGateway;

  /// Returns the current [DateTime].
  DateTime call() => _clockGateway.now();
}
