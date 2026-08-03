part of 'router.dart';

@TypedGoRoute<WebViewErrorResetRoute>(
  path: Routes.webViewErrorReset,
  name: 'web_view_error_reset',
)
@immutable
class WebViewErrorResetRoute extends GoRouteData with $WebViewErrorResetRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const WebViewErrorResetScreen();
}
