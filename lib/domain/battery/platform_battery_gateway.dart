import 'package:flutter/services.dart';
import 'package:flutter_lab/data/platform/method_channel_names.dart';
import 'package:flutter_lab/data/platform/method_names.dart';
import 'package:flutter_lab/domain/battery/battery.dart';
import 'package:flutter_lab/domain/battery/battery_gateway.dart';
import 'package:flutter_lab/domain/entity/exception/domain_exception.dart';
import 'package:result_dart/result_dart.dart';

/// [BatteryGateway] implementation that retrieves the device's battery
/// level via the platform method channel.
class PlatformBatteryGateway extends BatteryGateway {
  static const _channel = MethodChannel(MethodChannelNames.battery);

  @override
  AsyncResult<Battery> get() async {
    try {
      final level = await _channel.invokeMethod<int>(
        MethodNames.getBatteryLevel,
      );
      return level == null
          ? const DomainException.internal().toFailure()
          : Battery(level: level).toSuccess();
    } on PlatformException {
      return const DomainException.unavailable().toFailure();
    }
  }
}
