import 'package:flutter/widgets.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// URL that reliably sets `HttpOnly` session cookies, used to demonstrate
/// reading cookies the JavaScript `document.cookie` API cannot see.
final WebUri _cookieUrl = WebUri('https://github.com');

/// Screen demonstrating how to read `HttpOnly` cookies from a WebView.
class HttpOnlyCookieScreen extends StatelessWidget {
  const HttpOnlyCookieScreen({super.key});

  @override
  Widget build(BuildContext context) => Layout(
    appBar: const AppBar(title: Text('HttpOnly Cookie')),
    child: InAppWebView(
      initialUrlRequest: URLRequest(url: _cookieUrl),
    ),
  );
}
