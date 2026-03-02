import 'package:flutter_lab/domain/entity/applovin/applovin_configuration.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'max_sdk_ui_state.freezed.dart';

/// UI state for the MaxSdkScreen.
///
/// `configuration` is `null` for the initial state before initialization is
/// triggered.
@freezed
abstract class MaxSdkUiState with _$MaxSdkUiState {
  const factory MaxSdkUiState({
    AsyncValue<ApplovinConfiguration>? configuration,
  }) = _MaxSdkUiState;
}
