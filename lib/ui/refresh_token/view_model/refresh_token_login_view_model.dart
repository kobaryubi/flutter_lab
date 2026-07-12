import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/refresh_token/ui_state/refresh_token_login_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'refresh_token_login_view_model.g.dart';

/// ViewModel that starts the login flow of the refresh token sample.
@riverpod
class RefreshTokenLoginViewModel extends _$RefreshTokenLoginViewModel {
  @override
  RefreshTokenLoginUiState build() => const RefreshTokenLoginUiState();

  /// Generates the login URL via the auth SDK.
  Future<void> generateLoginUrl() async {
    state = state.copyWith(loginUrl: const AsyncLoading());

    final useCase = ref.read(generateLoginUrlUseCaseProvider);
    final loginUrl = await AsyncValue.guard(
      () async => (await useCase.call()).getOrThrow(),
    );

    state = state.copyWith(loginUrl: loginUrl);
  }
}
