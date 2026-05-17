import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart' hide Cookie;
import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/domain/value_object/cookie/cookie.dart';
import 'package:flutter_lab/ui/core/hook/use_in_app_web_view.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/core/ui/web_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// URL whose cookies are inspected: loaded in the WebView and queried
/// through the cookie gateway.
final WebUri _cookieUrl = WebUri('https://github.com');

/// Name of the cookie written by the set-cookie action.
const String _testCookieName = 'lab_test';

/// Value of the cookie written by the set-cookie action.
const String _testCookieValue = 'hello';

/// Async JavaScript body run via `callAsyncJavascript`: awaits a short
/// delay, then returns the document cookies.
const String _asyncJavascript = '''
await new Promise((resolve) => setTimeout(resolve, 500));
return document.cookie;
''';

/// User script injected at document start via `initialUserScripts`.
///
/// It writes a cookie from JavaScript before the page content loads,
/// so the injected cookie is visible to the cookie buttons afterwards.
final UserScript _userScript = UserScript(
  source: "document.cookie = 'user_script=injected';",
  injectionTime: UserScriptInjectionTime.AT_DOCUMENT_START,
);

/// Screen demonstrating WebView cookie operations and JavaScript
/// injection.
///
/// Cookie reading goes through the cookie gateway, which queries the
/// native cookie store and therefore returns `HttpOnly` cookies that the
/// JavaScript `document.cookie` API cannot see.
class HttpOnlyCookieScreen extends HookConsumerWidget {
  const HttpOnlyCookieScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final logger = ref.read(loggerGatewayProvider);
    final cookieGateway = ref.read(webViewCookieGatewayProvider);
    final cookies = useState<List<Cookie>?>(null);
    final webView = useInAppWebView();
    final jsResult = useState<String?>(null);

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

    /// Deletes every cookie across all URLs, then refreshes the list.
    Future<void> handleDeleteAllCookies() async {
      final result = await cookieGateway.deleteAllCookies();

      result.fold(
        (_) {},
        (exception) => logger.handle(exception: exception),
      );

      await handleGetCookies();
    }

    /// Evaluates `document.cookie` via `evaluateJavascript`. JavaScript
    /// only sees non-`HttpOnly` cookies.
    Future<void> handleEvaluateJavascript() async {
      final controller = webView.controller;

      if (controller == null) {
        return;
      }

      final result = await controller.evaluateJavascript(
        source: 'document.cookie',
      );

      logger.debug('evaluateJavascript document.cookie: $result');
      jsResult.value = 'evaluateJavascript: $result';
    }

    /// Runs [_asyncJavascript] via `callAsyncJavascript`, which awaits a
    /// delay before returning `document.cookie`.
    Future<void> handleCallAsyncJavascript() async {
      final controller = webView.controller;

      if (controller == null) {
        return;
      }

      final result = await controller.callAsyncJavaScript(
        functionBody: _asyncJavascript,
      );

      logger.debug(
        'callAsyncJavascript value=${result?.value} error=${result?.error}',
      );
      jsResult.value = 'callAsyncJavascript: ${result?.value}';
    }

    /// Logs the navigation target, then allows the navigation.
    Future<NavigationActionPolicy?> shouldOverrideUrlLoading(
      InAppWebViewController controller,
      NavigationAction navigationAction,
    ) async {
      logger.debug('navigate: ${navigationAction.request.url}');

      return .ALLOW;
    }

    final isLoaded = webView.status == .loaded;

    return Layout(
      appBar: const AppBar(title: Text('HttpOnly Cookie')),
      child: Column(
        spacing: 8,
        children: [
          GestureDetector(
            onTap: isLoaded ? handleGetCookies : null,
            child: const Text('[Get Cookies]'),
          ),
          GestureDetector(
            onTap: isLoaded ? handleSetCookie : null,
            child: const Text('[Set Test Cookie]'),
          ),
          GestureDetector(
            onTap: isLoaded ? handleDeleteCookies : null,
            child: const Text('[Delete Cookies]'),
          ),
          GestureDetector(
            onTap: isLoaded ? handleDeleteAllCookies : null,
            child: const Text('[Delete All Cookies]'),
          ),
          GestureDetector(
            onTap: isLoaded ? handleEvaluateJavascript : null,
            child: const Text('[Eval document.cookie]'),
          ),
          GestureDetector(
            onTap: isLoaded ? handleCallAsyncJavascript : null,
            child: const Text('[Call Async JS]'),
          ),

          if (jsResult.value case final result?) Text(result),

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

          if (webView.status == .error) const Text('failed to load'),

          Expanded(
            child: WebView(
              state: webView,
              url: _cookieUrl.toString(),
              initialUserScripts: UnmodifiableListView([_userScript]),
              shouldOverrideUrlLoading: shouldOverrideUrlLoading,
            ),
          ),
        ],
      ),
    );
  }
}
