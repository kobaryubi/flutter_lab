part of 'router.dart';

@TypedGoRoute<WebViewRoute>(path: Routes.webView)
@immutable
class WebViewRoute extends GoRouteData with $WebViewRoute {
  const WebViewRoute({required this.url});

  /// The URL to load in the web view.
  final String url;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      WebViewScreen(url: url);
}
