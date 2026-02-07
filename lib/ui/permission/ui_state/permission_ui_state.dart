import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:permission_handler/permission_handler.dart';

part 'permission_ui_state.freezed.dart';

/// UI state for the PermissionScreen.
///
/// `statuses` is `null` for the initial state before statuses are checked.
@freezed
abstract class PermissionUiState with _$PermissionUiState {
  const factory PermissionUiState({
    Map<Permission, PermissionStatus>? statuses,
  }) = _PermissionUiState;
}
