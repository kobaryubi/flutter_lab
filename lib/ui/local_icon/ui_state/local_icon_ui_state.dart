import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_icon_ui_state.freezed.dart';

/// UI state for the local icon screen.
@freezed
abstract class LocalIconUiState with _$LocalIconUiState {
  const factory LocalIconUiState() = _LocalIconUiState;
}
