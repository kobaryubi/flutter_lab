import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/presentation/core/hook/use_web_view.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter/webview_flutter.dart';

const _initialUrl = 'http://100.64.1.36:8081/index.html';

const _tabPages = ['page_a.html', 'page_b.html'];

/// Screen displaying a WebView that loads an HTML page with tabs.
class WebViewTabsScreen extends HookWidget {
  const WebViewTabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useMemoized(WebViewController.new, []);

    /// Intercepts navigation to tab pages and adds token query if missing.
    NavigationDecision onNavigationRequest(NavigationRequest request) {
      final uri = Uri.parse(request.url);
      final isTabPage = _tabPages.any(
        (page) => request.url.contains(page),
      );

      if (isTabPage && !uri.queryParameters.containsKey('token')) {
        final urlWithToken = uri.replace(
          queryParameters: {...uri.queryParameters, 'token': 'sample-token'},
        );
        controller.loadRequest(urlWithToken);

        return .prevent;
      }

      return .navigate;
    }

    final webView = useWebView(
      controller: controller,
      initialUrl: _initialUrl,
      onNavigationRequest: onNavigationRequest,
    );

    final currentUrl = useFuture(
      useMemoized(controller.currentUrl, [webView.status]),
    );

    /// Handles back button tap by skipping tab pages in history.
    Future<void> onBackTap() async {
      final currentUrl = await controller.currentUrl();
      final isTabPage = _tabPages.any(
        (page) => currentUrl?.contains(page) ?? false,
      );

      if (!isTabPage) {
        final canGoBack = await controller.canGoBack();

        if (canGoBack) {
          await controller.goBack();

          return;
        }

        if (context.mounted && context.canPop()) {
          context.pop();
        }

        return;
      }

      while (await controller.canGoBack()) {
        await controller.goBack();

        final url = await controller.currentUrl();
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
          Text('URL: ${currentUrl.data ?? ''}'),

          Expanded(child: WebViewWidget(controller: controller)),
        ],
      ),
    );
  }
}
