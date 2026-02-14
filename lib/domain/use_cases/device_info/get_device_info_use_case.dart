import 'package:flutter_lab/domain/device_info/device_info.dart';
import 'package:flutter_lab/domain/device_info/device_info_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case for retrieving device information.
class GetDeviceInfoUseCase {
  GetDeviceInfoUseCase({
    required DeviceInfoGateway deviceInfoGateway,
  }) : _deviceInfoGateway = deviceInfoGateway;

  final DeviceInfoGateway _deviceInfoGateway;

  /// Returns the current device's information.
  AsyncResult<DeviceInfo> call() async => _deviceInfoGateway.getDeviceInfo();
}
