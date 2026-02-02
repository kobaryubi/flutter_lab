import 'package:flutter_lab/domain/entity/navigation/navigation_destination.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'url_navigation_list.freezed.dart';

/// Holds blacklist and whitelist entries for URL navigation routing.
///
/// Each entry is a host+path prefix string (e.g. `"evil.com/malware"`).
@freezed
abstract class UrlNavigationList with _$UrlNavigationList {
  const factory UrlNavigationList({
    required List<String> blackList,
    required List<String> whiteList,
  }) = _UrlNavigationList;
  const UrlNavigationList._();

  /// Determines whether [url] should open in WebView or external browser.
  ///
  /// Decision rules (in priority order):
  /// 1. `http` scheme (not `https`) → external browser
  /// 2. `openExternalBrowser=1` query param → external browser
  /// 3. `openExternalBrowser=0` query param → WebView
  /// 4. URL host+path starts with a blacklist entry → external browser
  /// 5. URL host+path does NOT start with any whitelist entry
  ///    → external browser
  /// 6. Otherwise (matches whitelist) → WebView
  NavigationDestination determine({required String url}) {
    final uri = Uri.tryParse(url);
    if (uri == null) {
      return NavigationDestination.externalBrowser;
    }

    // Rule 1: http scheme → external browser
    if (uri.scheme == 'http') {
      return NavigationDestination.externalBrowser;
    }

    // Rule 2: openExternalBrowser=1 → external browser
    final openExternalBrowser = uri.queryParameters['openExternalBrowser'];
    if (openExternalBrowser == '1') {
      return NavigationDestination.externalBrowser;
    }

    // Rule 3: openExternalBrowser=0 → WebView
    if (openExternalBrowser == '0') {
      return NavigationDestination.webView;
    }

    final hostPath = '${uri.host}${uri.path}';

    // Rule 4: blacklist match → external browser
    final isBlacklisted = blackList.any(hostPath.startsWith);
    if (isBlacklisted) {
      return NavigationDestination.externalBrowser;
    }

    // Rule 5: no whitelist match → external browser
    final isWhitelisted = whiteList.any(hostPath.startsWith);
    if (!isWhitelisted) {
      return NavigationDestination.externalBrowser;
    }

    // Rule 6: matches whitelist → WebView
    return NavigationDestination.webView;
  }
}
