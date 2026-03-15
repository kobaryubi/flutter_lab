part of 'router.dart';

@TypedGoRoute<NotFoundRoute>(
  path: Routes.notFound,
  name: 'not_found',
)
@immutable
class NotFoundRoute extends GoRouteData with $NotFoundRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const NotFoundScreen();
}
