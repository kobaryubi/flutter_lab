part of 'router.dart';

@TypedGoRoute<WebviewCookieRoute>(
  path: Routes.webviewCookie,
  name: 'webview_cookie',
)
@immutable
class WebviewCookieRoute extends GoRouteData with $WebviewCookieRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const WebviewCookieScreen();
}
