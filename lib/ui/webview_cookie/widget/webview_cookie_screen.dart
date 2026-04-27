import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/webview_cookie/util/cookie_parser.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// HTML content that sets a few cookies via JavaScript on load.
///
/// `HttpOnly` cannot be set from JavaScript, so every cookie defined here
/// is visible through `document.cookie`.
const _htmlContent = '''
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script>
    document.cookie = "foo=bar; path=/";
    document.cookie = "sid=abc123; path=/";
    document.cookie = "theme=dark; path=/";
  </script>
</head>
<body>
  <h1>WebView Cookie Sample</h1>
  <p>Cookies are set on load via document.cookie.</p>
</body>
</html>
''';

/// Screen demonstrating how to read cookies from a WebView.
///
/// Loads an HTML page that sets a few cookies via `document.cookie`, then
/// reads them back with `runJavaScriptReturningResult` and parses the
/// resulting string into name/value pairs.
class WebviewCookieScreen extends HookWidget {
  const WebviewCookieScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        ..loadHtmlString(_htmlContent);

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

      cookies.value = CookieParser.parse(raw: cookieString);
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
            Column(
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
