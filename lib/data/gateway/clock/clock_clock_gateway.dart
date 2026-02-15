import 'package:clock/clock.dart';
import 'package:flutter_lab/domain/clock/clock_gateway.dart';

/// Implementation of [ClockGateway] using the `clock` package.
class ClockClockGateway implements ClockGateway {
  @override
  DateTime now() => clock.now();
}
