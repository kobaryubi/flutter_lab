import 'package:flutter_lab/domain/battery/battery.dart';
import 'package:flutter_lab/domain/location/location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'method_channel_ui_state.freezed.dart';

/// UI state for the method channel screen.
@freezed
abstract class MethodChannelUiState with _$MethodChannelUiState {
  const factory MethodChannelUiState({
    required AsyncValue<Location> location,
    required AsyncValue<Battery> batteryLevel,
    AsyncValue<Location>? watchedLocation,
  }) = _MethodChannelUiState;
}
