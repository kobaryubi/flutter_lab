import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// URL that reliably sets `HttpOnly` session cookies, used to demonstrate
/// reading cookies the JavaScript `document.cookie` API cannot see.
final WebUri _cookieUrl = WebUri('https://github.com');

/// Screen demonstrating how to read `HttpOnly` cookies from a WebView.
///
/// `flutter_inappwebview`'s [CookieManager] reads the native cookie store,
/// so it returns `HttpOnly` cookies that `document.cookie` omits.
class HttpOnlyCookieScreen extends HookConsumerWidget {
  const HttpOnlyCookieScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cookies = useState<List<Cookie>?>(null);
    final isLoaded = useState(false);

    /// Marks the page as loaded once the WebView finishes loading.
    void handleLoadStop(InAppWebViewController controller, WebUri? url) {
      isLoaded.value = true;
    }

    /// Reads every cookie for [_cookieUrl] from the native cookie store,
    /// including `HttpOnly` cookies.
    Future<void> handleGetCookies() async {
      cookies.value = await CookieManager.instance().getCookies(
        url: _cookieUrl,
      );
    }

    return Layout(
      appBar: const AppBar(title: Text('HttpOnly Cookie')),
      child: Column(
        spacing: 8,
        children: [
          GestureDetector(
            onTap: isLoaded.value ? handleGetCookies : null,
            child: const Text('[Get Cookies]'),
          ),

          if (cookies.value case final cookieList?)
            cookieList.isEmpty
                ? const Text('(no cookies)')
                : Column(
                    crossAxisAlignment: .start,
                    children: [
                      for (final cookie in cookieList)
                        Text(
                          '${cookie.name} '
                          '(httpOnly: ${cookie.isHttpOnly ?? false}) '
                          '= ${cookie.value}',
                        ),
                    ],
                  ),

          Expanded(
            child: InAppWebView(
              initialUrlRequest: URLRequest(url: _cookieUrl),
              onLoadStop: handleLoadStop,
            ),
          ),
        ],
      ),
    );
  }
}
