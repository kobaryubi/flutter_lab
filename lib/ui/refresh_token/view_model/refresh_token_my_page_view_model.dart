import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/domain/entity/user_profile/user_profile.dart';
import 'package:flutter_lab/ui/refresh_token/ui_state/refresh_token_my_page_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'refresh_token_my_page_view_model.g.dart';

/// ViewModel that fetches the signed-in user's profile and refreshes the
/// session when the access token has expired.
@riverpod
class RefreshTokenMyPageViewModel extends _$RefreshTokenMyPageViewModel {
  @override
  RefreshTokenMyPageUiState build() => const RefreshTokenMyPageUiState();

  /// Fetches the signed-in user's profile with the current access token.
  ///
  /// Returns the fetch result so the caller can branch on the outcome.
  Future<AsyncValue<UserProfile>> fetchUserProfile() async {
    state = state.copyWith(userProfile: const AsyncLoading());

    final useCase = ref.read(fetchUserProfileUseCaseProvider);
    final userProfile = await AsyncValue.guard(
      () async => (await useCase.call()).getOrThrow(),
    );

    state = state.copyWith(userProfile: userProfile);

    return userProfile;
  }

  /// Refreshes the session via the auth SDK to get a new login URL.
  ///
  /// Returns the refresh result so the caller can branch on the outcome.
  Future<AsyncValue<Uri>> refreshToken() async {
    state = state.copyWith(refreshLoginUrl: const AsyncLoading());

    final useCase = ref.read(refreshTokenUseCaseProvider);
    final refreshLoginUrl = await AsyncValue.guard(
      () async => (await useCase.call()).getOrThrow(),
    );

    state = state.copyWith(refreshLoginUrl: refreshLoginUrl);

    return refreshLoginUrl;
  }
}
