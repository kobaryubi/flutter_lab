import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/webview_cookie/util/cookie_parser.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// URL that sets a few cookies via `Set-Cookie` headers and then redirects
/// to a page that echoes them.
///
/// A real origin is required: `data:` and `about:blank` reject cookie writes,
/// so `loadHtmlString` cannot be used here.
final Uri _cookieUrl = Uri.parse(
  'https://httpbin.org/cookies/set?foo=bar&sid=abc123&theme=dark',
);

/// Screen demonstrating how to read cookies from a WebView.
///
/// Loads an HTML page that sets a few cookies via `document.cookie`, then
/// reads them back with `runJavaScriptReturningResult` and parses the
/// resulting string into name/value pairs.
class WebviewCookieScreen extends HookConsumerWidget {
  const WebviewCookieScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final talker = ref.read(talkerProvider);
    final controller = useMemoized(WebViewController.new, []);
    final cookies = useState<Map<String, String>?>(null);
    final isLoaded = useState(false);

    useEffect(() {
      controller
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setNavigationDelegate(
          NavigationDelegate(
            onPageFinished: (_) {
              isLoaded.value = true;
            },
          ),
        )
        ..loadRequest(_cookieUrl);

      return null;
    }, []);

    /// Reads `document.cookie` from the loaded page and parses it.
    Future<void> handleGetCookies() async {
      final raw = await controller.runJavaScriptReturningResult(
        'document.cookie',
      );
      // Android returns the JS string JSON-encoded (with surrounding quotes);
      // iOS returns it as-is. Decode when the surrounding quotes are present.
      final rawString = raw.toString();
      final cookieString = rawString.startsWith('"') && rawString.endsWith('"')
          ? jsonDecode(rawString) as String
          : rawString;
      final parsed = CookieParser.parse(raw: cookieString);

      talker
        ..debug('document.cookie raw: $rawString')
        ..debug('document.cookie parsed: $parsed');

      cookies.value = parsed;
    }

    return Layout(
      appBar: const AppBar(title: Text('WebView Cookie')),
      child: Column(
        spacing: 8,
        children: [
          GestureDetector(
            onTap: isLoaded.value ? handleGetCookies : null,
            child: const Text('[Get Cookies]'),
          ),

          if (cookies.value case final parsed?)
            parsed.isEmpty
                ? const Text('(no cookies)')
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (final entry in parsed.entries)
                        Text('${entry.key} = ${entry.value}'),
                    ],
                  ),

          Expanded(child: WebViewWidget(controller: controller)),
        ],
      ),
    );
  }
}
