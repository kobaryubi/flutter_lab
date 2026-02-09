import 'package:flutter_lab/domain/entity/permission/permission_statuses.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'permission_ui_state.freezed.dart';

/// UI state for the PermissionScreen.
///
/// `statuses` is `null` for the initial state before statuses are checked.
@freezed
abstract class PermissionUiState with _$PermissionUiState {
  const factory PermissionUiState({
    AsyncValue<PermissionStatuses>? statuses,
  }) = _PermissionUiState;
}
