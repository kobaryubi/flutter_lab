import 'package:flutter_lab/domain/device_info/device_info.dart';
import 'package:result_dart/result_dart.dart';

/// Gateway interface for retrieving device information.
abstract class DeviceInfoGateway {
  /// Returns the current device's information.
  AsyncResult<DeviceInfo> getDeviceInfo();
}
