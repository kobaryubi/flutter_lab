import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_lab/domain/device_info/device_info.dart';
import 'package:flutter_lab/domain/device_info/device_info_gateway.dart';
import 'package:flutter_lab/domain/entity/exception/domain_exception.dart';
import 'package:result_dart/result_dart.dart';

/// Implementation of [DeviceInfoGateway] using device_info_plus.
class DeviceInfoPlusDeviceInfoGateway implements DeviceInfoGateway {
  DeviceInfoPlusDeviceInfoGateway() : _deviceInfoPlugin = DeviceInfoPlugin();

  final DeviceInfoPlugin _deviceInfoPlugin;

  @override
  AsyncResult<DeviceInfo> getDeviceInfo() async {
    try {
      if (Platform.isAndroid) {
        final androidInfo = await _deviceInfoPlugin.androidInfo;
        return DeviceInfo(
          model: androidInfo.model,
          manufacturer: androidInfo.manufacturer,
          osName: 'Android',
          osVersion: androidInfo.version.release,
          sdkVersion: androidInfo.version.sdkInt.toString(),
        ).toSuccess();
      }

      if (Platform.isIOS) {
        final iosInfo = await _deviceInfoPlugin.iosInfo;
        return DeviceInfo(
          model: iosInfo.model,
          manufacturer: 'Apple',
          osName: iosInfo.systemName,
          osVersion: iosInfo.systemVersion,
          sdkVersion: iosInfo.systemVersion,
        ).toSuccess();
      }

      return const DomainException.unimplemented().toFailure();
    } on Exception catch (exception) {
      return exception.toFailure();
    }
  }
}
