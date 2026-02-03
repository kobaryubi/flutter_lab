import 'package:flutter_lab/domain/entity/network/connectivity_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'network_ui_state.freezed.dart';

/// UI state for the NetworkScreen.
///
/// `status` is `null` for the initial state before the user taps the button.
@freezed
abstract class NetworkUiState with _$NetworkUiState {
  const factory NetworkUiState({
    AsyncValue<ConnectivityStatus>? status,
  }) = _NetworkUiState;
}
