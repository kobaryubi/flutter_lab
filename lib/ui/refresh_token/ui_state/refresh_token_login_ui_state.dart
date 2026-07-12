import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'refresh_token_login_ui_state.freezed.dart';

/// UI state for the RefreshTokenLoginScreen.
///
/// `loginUrl` is `null` for the initial state, [AsyncLoading] while the
/// auth SDK generates the URL, [AsyncData] on success, and [AsyncError]
/// on failure.
@freezed
abstract class RefreshTokenLoginUiState with _$RefreshTokenLoginUiState {
  const factory RefreshTokenLoginUiState({
    AsyncValue<Uri>? loginUrl,
  }) = _RefreshTokenLoginUiState;
}
