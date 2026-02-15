import 'package:flutter_lab/domain/battery/battery.dart';
import 'package:flutter_lab/domain/battery/battery_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Retrieves the current battery level from the platform.
class GetBatteryLevelUseCase {
  GetBatteryLevelUseCase({
    required BatteryGateway batteryGateway,
  }) : _batteryGateway = batteryGateway;

  final BatteryGateway _batteryGateway;

  /// Returns the current [Battery] level.
  AsyncResult<Battery> call() async => _batteryGateway.get();
}
