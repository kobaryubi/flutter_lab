import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_lab/ui/core/hook/use_in_app_web_view.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/core/ui/web_view.dart';

/// Simulates fetching the URL to display from a remote source.
Future<String> _fetchUrl() async {
  await Future<void>.delayed(const Duration(seconds: 1));

  return 'https://github.com';
}

/// Screen demonstrating a WebView whose URL is resolved asynchronously
/// (e.g. from an API) and loaded through the controller after the WebView
/// has been created.
class WebViewRemoteUrlScreen extends HookWidget {
  const WebViewRemoteUrlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final webView = useInAppWebView();
    final fetchedUrl = useState<String?>(null);

    useEffect(() {
      var isDisposed = false;

      /// Resolves the URL and stores it once fetched.
      Future<void> resolveUrl() async {
        final url = await _fetchUrl();

        if (isDisposed) {
          return;
        }

        fetchedUrl.value = url;
      }

      resolveUrl();

      return () => isDisposed = true;
    }, []);

    final controller = webView.controller;
    final url = fetchedUrl.value;

    useEffect(() {
      // Load the fetched URL once both the URL and the controller exist.
      if (controller != null && url != null) {
        unawaited(
          controller.loadUrl(urlRequest: URLRequest(url: WebUri(url))),
        );
      }

      return null;
    }, [controller, url]);

    return Layout(
      appBar: const AppBar(title: Text('WebView Remote URL')),
      child: Column(
        spacing: 8,
        children: [
          Text('fetched URL: ${url ?? '(fetching...)'}'),

          Expanded(child: WebView(state: webView)),
        ],
      ),
    );
  }
}
