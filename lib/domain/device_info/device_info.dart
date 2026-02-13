import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_info.freezed.dart';

/// Entity representing basic device information.
@freezed
abstract class DeviceInfo with _$DeviceInfo {
  const factory DeviceInfo({
    required String model,
    required String manufacturer,
    required String osName,
    required String osVersion,
    required String sdkVersion,
  }) = _DeviceInfo;
}
