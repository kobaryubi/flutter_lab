part of 'router.dart';

@TypedGoRoute<WebViewRemoteUrlRoute>(
  path: Routes.webViewRemoteUrl,
  name: 'web_view_remote_url',
)
@immutable
class WebViewRemoteUrlRoute extends GoRouteData with $WebViewRemoteUrlRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const WebViewRemoteUrlScreen();
}
