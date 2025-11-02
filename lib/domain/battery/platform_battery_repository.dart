import 'package:flutter/services.dart';
import 'package:flutter_lab/data/platform/method_channel_names.dart';
import 'package:flutter_lab/domain/battery/battery.dart';
import 'package:flutter_lab/domain/battery/battery_repository.dart';
import 'package:result_dart/result_dart.dart';

class PlatformBatteryRepository extends BatteryRepository {
  static const platform = MethodChannel(MethodChannelNames.battery);

  @override
  AsyncResult<Battery> get() async {
    return const Battery(level: 85).toSuccess();
  }
}
