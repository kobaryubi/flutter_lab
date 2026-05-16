part of 'router.dart';

@TypedGoRoute<HttpOnlyCookieRoute>(
  path: Routes.httpOnlyCookie,
  name: 'http_only_cookie',
)
@immutable
class HttpOnlyCookieRoute extends GoRouteData with $HttpOnlyCookieRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const HttpOnlyCookieScreen();
}
