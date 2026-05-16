import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart' hide Cookie;
import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/domain/entity/cookie/cookie.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// URL whose cookies are inspected: loaded in the WebView and queried
/// through the cookie gateway.
final WebUri _cookieUrl = WebUri('https://github.com');

/// Suffix appended to the WebView's default user agent.
const String _userAgentSuffix = 'flutter_lab-http-only-cookie/1.0';

/// Name of the cookie written by the set-cookie action.
const String _testCookieName = 'lab_test';

/// Value of the cookie written by the set-cookie action.
const String _testCookieValue = 'hello';

/// Screen demonstrating WebView cookie operations.
///
/// Reading goes through the cookie gateway, which queries the native
/// cookie store and therefore returns `HttpOnly` cookies that the
/// JavaScript `document.cookie` API cannot see.
class HttpOnlyCookieScreen extends HookConsumerWidget {
  const HttpOnlyCookieScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final logger = ref.read(loggerGatewayProvider);
    final cookieGateway = ref.read(webViewCookieGatewayProvider);
    final cookies = useState<List<Cookie>?>(null);
    final isLoaded = useState(false);
    final userAgent = useState<String?>(null);

    useEffect(() {
      var isDisposed = false;

      /// Joins the platform default user agent with [_userAgentSuffix].
      Future<void> resolveUserAgent() async {
        final defaultUserAgent =
            await InAppWebViewController.getDefaultUserAgent();

        if (isDisposed) {
          return;
        }

        userAgent.value = '$defaultUserAgent $_userAgentSuffix';
      }

      resolveUserAgent();

      return () => isDisposed = true;
    }, []);

    /// Marks the page as loaded once the WebView finishes loading.
    void handleLoadStop(InAppWebViewController controller, WebUri? url) {
      isLoaded.value = true;
    }

    /// Reads every cookie for [_cookieUrl] through the gateway, logs each
    /// one, and updates the displayed list.
    Future<void> handleGetCookies() async {
      final result = await cookieGateway.getCookies(url: _cookieUrl);

      result.fold(
        (cookieList) {
          for (final cookie in cookieList) {
            logger.debug(
              'cookie ${cookie.name} httpOnly=${cookie.isHttpOnly}',
            );
          }

          cookies.value = cookieList;
        },
        (exception) => logger.handle(exception: exception),
      );
    }

    /// Writes a test cookie for [_cookieUrl], then refreshes the list.
    Future<void> handleSetCookie() async {
      final result = await cookieGateway.setCookie(
        url: _cookieUrl,
        name: _testCookieName,
        value: _testCookieValue,
      );

      result.fold(
        (_) {},
        (exception) => logger.handle(exception: exception),
      );

      await handleGetCookies();
    }

    /// Deletes every cookie for [_cookieUrl], then refreshes the list.
    Future<void> handleDeleteCookies() async {
      final result = await cookieGateway.deleteCookies(url: _cookieUrl);

      result.fold(
        (_) {},
        (exception) => logger.handle(exception: exception),
      );

      await handleGetCookies();
    }

    final resolvedUserAgent = userAgent.value;

    return Layout(
      appBar: const AppBar(title: Text('HttpOnly Cookie')),
      child: Column(
        spacing: 8,
        children: [
          GestureDetector(
            onTap: isLoaded.value ? handleGetCookies : null,
            child: const Text('[Get Cookies]'),
          ),
          GestureDetector(
            onTap: isLoaded.value ? handleSetCookie : null,
            child: const Text('[Set Test Cookie]'),
          ),
          GestureDetector(
            onTap: isLoaded.value ? handleDeleteCookies : null,
            child: const Text('[Delete Cookies]'),
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
                          '(httpOnly: ${cookie.isHttpOnly}) '
                          '= ${cookie.value}',
                        ),
                    ],
                  ),

          Expanded(
            child: resolvedUserAgent == null
                ? const Center(child: Text('preparing WebView...'))
                : InAppWebView(
                    initialUrlRequest: URLRequest(url: _cookieUrl),
                    initialSettings: InAppWebViewSettings(
                      userAgent: resolvedUserAgent,
                    ),
                    onLoadStop: handleLoadStop,
                  ),
          ),
        ],
      ),
    );
  }
}
