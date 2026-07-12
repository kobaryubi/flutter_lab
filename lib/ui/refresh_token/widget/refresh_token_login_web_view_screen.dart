import 'package:flutter/widgets.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/core/hook/use_in_app_web_view.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/core/ui/web_view.dart';
import 'package:flutter_lab/ui/refresh_token/ui_state/refresh_token_login_web_view_ui_state.dart';
import 'package:flutter_lab/ui/refresh_token/view_model/refresh_token_login_web_view_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen that opens a login URL issued by the auth SDK in a WebView.
///
/// The login web page issues the access token as a cookie. Every finished
/// page load attempts to read and save the cookie; once the token has
/// been saved, this screen pops itself with `true`.
class RefreshTokenLoginWebViewScreen extends HookConsumerWidget {
  const RefreshTokenLoginWebViewScreen({required this.loginUrl, super.key});

  /// Login URL issued by the auth SDK.
  final Uri loginUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(refreshTokenLoginWebViewViewModelProvider);
    final viewModel = ref.read(
      refreshTokenLoginWebViewViewModelProvider.notifier,
    );
    final logger = ref.read(loggerGatewayProvider);

    /// Logs every page load start to make silent load failures visible.
    void handleLoadStart(InAppWebViewController controller, WebUri? url) {
      logger.debug('RefreshTokenLoginWebViewScreen: onLoadStart url=$url');
    }

    /// Attempts to save the access token cookie once a page finishes
    /// loading.
    void handleLoadStop(InAppWebViewController controller, WebUri? url) {
      logger.debug('RefreshTokenLoginWebViewScreen: onLoadStop url=$url');
      viewModel.saveAccessTokenFromCookie(url: loginUrl);
    }

    final webView = useInAppWebView(
      onLoadStart: handleLoadStart,
      onLoadStop: handleLoadStop,
    );

    /// Pops this screen with `true` once the access token has been saved.
    void handleSaveAccessTokenChanged(
      RefreshTokenLoginWebViewUiState? previous,
      RefreshTokenLoginWebViewUiState next,
    ) {
      logger.debug(
        'RefreshTokenLoginWebViewScreen: saveAccessToken '
        '${previous?.saveAccessToken} -> ${next.saveAccessToken}',
      );

      if (previous?.saveAccessToken == next.saveAccessToken) {
        return;
      }

      if (next.saveAccessToken case AsyncData()) {
        context.pop(true);
      }
    }

    ref.listen(
      refreshTokenLoginWebViewViewModelProvider,
      handleSaveAccessTokenChanged,
    );

    return Layout(
      appBar: const AppBar(title: Text('Login WebView')),
      child: Column(
        children: [
          if (uiState.saveAccessToken case AsyncError(:final error))
            Text('Error: $error'),

          if (webView.status case WebViewLoadStatus.error)
            const Text('Failed to load the login page.'),

          Expanded(
            child: WebView(state: webView, url: loginUrl.toString()),
          ),
        ],
      ),
    );
  }
}
