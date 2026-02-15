import 'package:flutter_lab/domain/battery/battery.dart';
import 'package:result_dart/result_dart.dart';

abstract class BatteryGateway {
  AsyncResult<Battery> get();
}
