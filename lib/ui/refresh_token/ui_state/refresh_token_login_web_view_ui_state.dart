import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:result_dart/result_dart.dart';

part 'refresh_token_login_web_view_ui_state.freezed.dart';

/// UI state for the RefreshTokenLoginWebViewScreen.
///
/// `saveAccessToken` is `null` until a save is attempted, [AsyncLoading]
/// while reading the cookie, [AsyncData] once the access token has been
/// saved, and [AsyncError] on failure.
@freezed
abstract class RefreshTokenLoginWebViewUiState
    with _$RefreshTokenLoginWebViewUiState {
  const factory RefreshTokenLoginWebViewUiState({
    AsyncValue<Unit>? saveAccessToken,
  }) = _RefreshTokenLoginWebViewUiState;
}
