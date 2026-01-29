part of 'router.dart';

@TypedGoRoute<WebViewRoute>(path: Routes.webView)
@immutable
class WebViewRoute extends GoRouteData with $WebViewRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const WebViewScreen();
  }
}
