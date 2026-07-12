import 'package:flutter_lab/domain/entity/user_profile/user_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'refresh_token_my_page_ui_state.freezed.dart';

/// UI state for the RefreshTokenMyPageScreen.
///
/// `userProfile` is `null` for the initial state, [AsyncLoading] while
/// fetching, [AsyncData] on success, and [AsyncError] on failure —
/// including the unauthenticated failure that starts the refresh flow.
///
/// `refreshLoginUrl` is `null` until a refresh is attempted, then follows
/// the same lifecycle for the login URL issued by the refresh.
@freezed
abstract class RefreshTokenMyPageUiState with _$RefreshTokenMyPageUiState {
  const factory RefreshTokenMyPageUiState({
    AsyncValue<UserProfile>? userProfile,
    AsyncValue<Uri>? refreshLoginUrl,
  }) = _RefreshTokenMyPageUiState;
}
