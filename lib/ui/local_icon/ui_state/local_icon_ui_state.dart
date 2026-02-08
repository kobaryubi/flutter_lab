import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'local_icon_ui_state.freezed.dart';

/// UI state for the local icon screen.
@freezed
abstract class LocalIconUiState with _$LocalIconUiState {
  const factory LocalIconUiState({
    AsyncValue<File>? copyAsset,
  }) = _LocalIconUiState;
}
