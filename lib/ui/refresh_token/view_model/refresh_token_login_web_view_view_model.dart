import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/refresh_token/ui_state/refresh_token_login_web_view_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'refresh_token_login_web_view_view_model.g.dart';

/// ViewModel that saves the access token cookie issued by the login web
/// page.
@riverpod
class RefreshTokenLoginWebViewViewModel
    extends _$RefreshTokenLoginWebViewViewModel {
  @override
  RefreshTokenLoginWebViewUiState build() =>
      const RefreshTokenLoginWebViewUiState();

  /// Reads the access token cookie stored for [url] and saves it.
  ///
  /// Page loads can finish more than once (the login page redirects after
  /// issuing the cookie), so an in-flight or succeeded save is not
  /// repeated; a failed save is retried on the next page load.
  Future<void> saveAccessTokenFromCookie({required Uri url}) async {
    if (state.saveAccessToken case AsyncLoading() || AsyncData()) {
      return;
    }

    state = state.copyWith(saveAccessToken: const AsyncLoading());

    final useCase = ref.read(saveAccessTokenFromCookieUseCaseProvider);
    final result = await AsyncValue.guard(
      () async => (await useCase.call(url: url)).getOrThrow(),
    );

    state = state.copyWith(saveAccessToken: result);
  }
}
