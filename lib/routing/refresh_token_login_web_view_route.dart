part of 'router.dart';

@TypedGoRoute<RefreshTokenLoginWebViewRoute>(
  path: Routes.refreshTokenLoginWebView,
  name: 'refresh_token_login_web_view',
)
@immutable
class RefreshTokenLoginWebViewRoute extends GoRouteData
    with $RefreshTokenLoginWebViewRoute {
  const RefreshTokenLoginWebViewRoute({required this.loginUrl});

  /// Login URL issued by the auth SDK, passed as a query parameter.
  final String loginUrl;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      RefreshTokenLoginWebViewScreen(loginUrl: Uri.parse(loginUrl));
}
