import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/presentation/core/hook/use_web_view.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter/webview_flutter.dart';

const _initialUrl = 'http://localhost:8081/index.html';

const _tabPages = ['page_a.html', 'page_b.html'];

/// Screen displaying a WebView that loads an HTML page with tabs.
class WebViewTabsScreen extends HookWidget {
  const WebViewTabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final webView = useWebView(initialUrl: _initialUrl);

    /// Handles back button tap by skipping tab pages in history.
    Future<void> onBackTap() async {
      final currentUrl = await webView.controller.currentUrl();
      final isTabPage = _tabPages.any(
        (page) => currentUrl?.contains(page) ?? false,
      );

      if (!isTabPage) {
        final canGoBack = await webView.controller.canGoBack();

        if (canGoBack) {
          await webView.controller.goBack();

          return;
        }

        if (context.mounted && context.canPop()) {
          context.pop();
        }

        return;
      }

      while (await webView.controller.canGoBack()) {
        await webView.controller.goBack();

        final url = await webView.controller.currentUrl();
        final isStillTabPage = _tabPages.any(
          (page) => url?.contains(page) ?? false,
        );

        if (!isStillTabPage) {
          return;
        }
      }
    }

    return Layout(
      appBar: AppBar(title: const Text('WebView Tabs'), onBackTap: onBackTap),
      child: Column(
        children: [
          Text('Status: ${webView.status.name}'),

          Expanded(child: WebViewWidget(controller: webView.controller)),
        ],
      ),
    );
  }
}
