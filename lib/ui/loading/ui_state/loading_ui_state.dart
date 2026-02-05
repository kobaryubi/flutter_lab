import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'loading_ui_state.freezed.dart';

/// UI state for the LoadingScreen.
///
/// `data` is `null` for the initial state before the fetch is triggered.
@freezed
abstract class LoadingUiState with _$LoadingUiState {
  const factory LoadingUiState({
    AsyncValue<String>? data,
  }) = _LoadingUiState;
}
