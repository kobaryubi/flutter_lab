part of 'router.dart';

@TypedGoRoute<WebViewTabsRoute>(path: Routes.webViewTabs)
@immutable
class WebViewTabsRoute extends GoRouteData with $WebViewTabsRoute {
  const WebViewTabsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const WebViewTabsScreen();
}
