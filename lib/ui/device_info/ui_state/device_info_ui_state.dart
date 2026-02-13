import 'package:flutter_lab/domain/device_info/device_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'device_info_ui_state.freezed.dart';

/// UI state for the device info screen.
@freezed
abstract class DeviceInfoUiState with _$DeviceInfoUiState {
  const factory DeviceInfoUiState({
    required AsyncValue<DeviceInfo> deviceInfo,
  }) = _DeviceInfoUiState;
}
