import 'package:flutter_lab/ui/logged_in_home/widget/logged_in_home_screen.dart'
    show LoggedInHomeScreen;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'logged_in_home_ui_state.freezed.dart';

/// UI state for the [LoggedInHomeScreen].
///
/// [targetScreen] is the pending target screen path consumed from
/// in-memory storage on screen entry, or `null` if nothing was pending.
@freezed
abstract class LoggedInHomeUiState with _$LoggedInHomeUiState {
  const factory LoggedInHomeUiState({
    String? targetScreen,
  }) = _LoggedInHomeUiState;
}
