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
        _NavigationBar(webView: webView),
        Expanded(
          child: Stack(
            children: [
              WebViewWidget(controller: webView.controller),
              if (webView.isLoading)
                _LoadingIndicator(progress: webView.progress),
              if (webView.hasError) _ErrorOverlay(error: webView.error),
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
        Text('Progress: ${webView.progress}%'),
        Text('URL: ${webView.currentUrl ?? 'none'}'),
      ],
    );
  }
}

class _NavigationBar extends StatelessWidget {
  const _NavigationBar({required this.webView});

  final WebViewState webView;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _NavButton(
          label: '←',
          onTap: webView.canGoBack ? webView.goBack : null,
        ),
        _NavButton(
          label: '→',
          onTap: webView.canGoForward ? webView.goForward : null,
        ),
        _NavButton(
          label: '↻',
          onTap: webView.reload,
        ),
        Expanded(
          child: _UrlButton(
            label: 'flutter.dev',
            onTap: () => webView.loadUrl('https://flutter.dev'),
          ),
        ),
        Expanded(
          child: _UrlButton(
            label: 'dart.dev',
            onTap: () => webView.loadUrl('https://dart.dev'),
          ),
        ),
      ],
    );
  }
}

class _NavButton extends StatelessWidget {
  const _NavButton({required this.label, this.onTap});

  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(label),
    );
  }
}

class _UrlButton extends StatelessWidget {
  const _UrlButton({required this.label, required this.onTap});

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(label),
    );
  }
}

class _LoadingIndicator extends StatelessWidget {
  const _LoadingIndicator({required this.progress});

  final int progress;

  @override
  Widget build(BuildContext context) {
    return Text('Loading: $progress%');
  }
}

class _ErrorOverlay extends StatelessWidget {
  const _ErrorOverlay({required this.error});

  final String? error;

  @override
  Widget build(BuildContext context) {
    return Text('Error: ${error ?? 'Unknown error'}');
  }
}
