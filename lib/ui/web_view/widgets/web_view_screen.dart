import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/presentation/core/hook/use_web_view.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// Screen demonstrating the useWebView hook.
class WebViewScreen extends StatelessWidget {
  const WebViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layout(
      appBar: AppBar(title: Text('Web View')),
      child: _Body(),
    );
  }
}

class _Body extends HookWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final webView = useWebView(initialUrl: 'https://flutter.dev');

    return Column(
      children: [
        _StatusBar(webView: webView),
        Expanded(
          child: Stack(
            children: [
              WebViewWidget(controller: webView.controller),
              if (webView.isLoading) const Text('Loading...'),
            ],
          ),
        ),
      ],
    );
  }
}

class _StatusBar extends StatelessWidget {
  const _StatusBar({required this.webView});

  final WebViewState webView;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Status: ${webView.status.name}'),
      ],
    );
  }
}
