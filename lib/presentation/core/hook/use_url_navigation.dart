import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/domain/entity/navigation/navigation_destination.dart';
import 'package:flutter_lab/domain/entity/navigation/url_navigation_list.dart';
import 'package:flutter_lab/routing/router.dart';
import 'package:url_launcher/url_launcher.dart';

/// State returned by [useUrlNavigation].
class UseUrlNavigationState {
  const UseUrlNavigationState({
    required this.handleUrlNavigation,
  });

  /// Determines the navigation destination for a URL and navigates.
  final Future<void> Function({required String url}) handleUrlNavigation;
}

/// Hook that returns a [UseUrlNavigationState] to navigate a URL
/// based on a pre-determined [NavigationDestination].
///
/// Takes [determineNavigationDestination] callback and
/// [urlNavigationList] to resolve a URL to its
/// [NavigationDestination]. The domain logic stays in the caller.
UseUrlNavigationState useUrlNavigation(
  NavigationDestination Function({
    required String url,
    required UrlNavigationList? urlNavigationList,
  })
  determineNavigationDestination, {
  required UrlNavigationList? urlNavigationList,
}) {
  final context = useContext();

  /// Determines the navigation destination for the given [url]
  /// and navigates accordingly.
  Future<void> handleUrlNavigation({required String url}) async {
    final destination = determineNavigationDestination(
      url: url,
      urlNavigationList: urlNavigationList,
    );

    switch (destination) {
      case .webView:
        WebViewRoute(url: url).go(context);
      case .externalBrowser:
        await launchUrl(Uri.parse(url), mode: .externalApplication);
    }
  }

  return UseUrlNavigationState(
    handleUrlNavigation: handleUrlNavigation,
  );
}
