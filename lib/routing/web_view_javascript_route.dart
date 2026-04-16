part of 'router.dart';

@TypedGoRoute<WebViewJavascriptRoute>(
  path: Routes.webViewJavascript,
  name: 'web_view_javascript',
)
@immutable
class WebViewJavascriptRoute extends GoRouteData with $WebViewJavascriptRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const WebViewJavascriptScreen();
}
