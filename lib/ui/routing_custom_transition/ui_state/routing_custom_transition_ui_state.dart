import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'routing_custom_transition_ui_state.freezed.dart';

/// UI state for the RoutingCustomTransitionScreen.
///
/// `data` is `null` for the initial state before the fetch is triggered.
@freezed
abstract class RoutingCustomTransitionUiState
    with _$RoutingCustomTransitionUiState {
  const factory RoutingCustomTransitionUiState({
    AsyncValue<String>? data,
  }) = _RoutingCustomTransitionUiState;
}
