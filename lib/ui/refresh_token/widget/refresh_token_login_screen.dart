import 'package:flutter/widgets.dart';
import 'package:flutter_lab/routing/router.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/refresh_token/ui_state/refresh_token_login_ui_state.dart';
import 'package:flutter_lab/ui/refresh_token/view_model/refresh_token_login_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Entry screen of the refresh token sample.
///
/// Starts the login flow: generates a login URL via the auth SDK and opens
/// it in a WebView so the auth web server can issue the access token cookie.
/// Once the token has been saved, navigates to the my page screen.
class RefreshTokenLoginScreen extends StatelessWidget {
  const RefreshTokenLoginScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Refresh Token Login')),
    child: _Body(),
  );
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(refreshTokenLoginViewModelProvider);
    final viewModel = ref.read(refreshTokenLoginViewModelProvider.notifier);

    /// Opens the login WebView once a login URL has been generated and,
    /// after the access token has been saved, navigates to the my page
    /// screen.
    Future<void> handleLoginUrlChanged(
      RefreshTokenLoginUiState? previous,
      RefreshTokenLoginUiState next,
    ) async {
      if (previous?.loginUrl == next.loginUrl) {
        return;
      }

      if (next.loginUrl case AsyncData(:final value)) {
        final isSaved = await RefreshTokenLoginWebViewRoute(
          loginUrl: value.toString(),
        ).push<bool>(context);

        if ((isSaved ?? false) && context.mounted) {
          await RefreshTokenMyPageRoute().push<void>(context);
        }
      }
    }

    ref.listen(refreshTokenLoginViewModelProvider, handleLoginUrlChanged);

    /// Generates the login URL to start the login flow.
    void handleLogin() {
      viewModel.generateLoginUrl();
    }

    return Column(
      spacing: 8,
      children: [
        GestureDetector(
          onTap: handleLogin,
          child: const Text('[Login]'),
        ),

        if (uiState.loginUrl case AsyncLoading()) const Text('Loading...'),
        if (uiState.loginUrl case AsyncError(:final error))
          Text('Error: $error'),
      ],
    );
  }
}
