import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/presentation/core/hook/use_web_view.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// Screen demonstrating the useWebView hook.
class WebViewScreen extends StatelessWidget {
  const WebViewScreen({required this.url, super.key});

  /// The URL to load in the web view.
  final String url;

  @override
  Widget build(BuildContext context) => Layout(
    appBar: const AppBar(title: Text('Web View')),
    child: _Body(url: url),
  );
}

class _Body extends HookWidget {
  const _Body({required this.url});

  /// The URL to load in the web view.
  final String url;

  @override
  Widget build(BuildContext context) {
    final controller = useMemoized(WebViewController.new, []);
    final interceptedUrl = useState<String?>(null);
    final currentUrl = useState<String?>(null);

    /// Handles navigation requests by intercepting YouTube URLs.
    NavigationDecision handleNavigationRequest(NavigationRequest request) {
      final url = request.url;
      final isYouTube = url.contains('youtube.com');

      if (isYouTube) {
        interceptedUrl.value = url;
        return NavigationDecision.prevent;
      }

      return NavigationDecision.navigate;
    }

    /// Handles tap on the get URL button by reading the current webview URL.
    Future<void> handleGetUrlTap() async {
      currentUrl.value = await controller.currentUrl();
    }

    final webView = useWebView(
      controller: controller,
      initialUrl: url,
      onNavigationRequest: handleNavigationRequest,
    );

    return Column(
      children: [
        Text('Status: ${webView.status.name}'),

        GestureDetector(
          onTap: handleGetUrlTap,
          child: const Text('Get URL'),
        ),

        if (currentUrl.value != null) Text('Current URL: ${currentUrl.value}'),

        if (interceptedUrl.value != null)
          Text('Intercepted YouTube URL: ${interceptedUrl.value}'),

        Expanded(
          child: Stack(
            children: [
              WebViewWidget(controller: webView.controller),

              if (webView.status == .loading) const Text('Loading...'),
            ],
          ),
        ),
      ],
    );
  }
}
