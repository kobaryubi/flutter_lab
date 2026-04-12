import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/presentation/core/hook/use_web_view.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:webview_flutter/webview_flutter.dart';

const _initialUrl = 'http://localhost:8081/index.html';

/// Screen displaying a WebView that loads an HTML page with tabs.
class WebViewTabsScreen extends StatelessWidget {
  const WebViewTabsScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('WebView Tabs')),
    child: _Body(),
  );
}

class _Body extends HookWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final webView = useWebView(initialUrl: _initialUrl);

    return Column(
      children: [
        Text('Status: ${webView.status.name}'),

        Expanded(child: WebViewWidget(controller: webView.controller)),
      ],
    );
  }
}
