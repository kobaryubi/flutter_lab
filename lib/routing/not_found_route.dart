part of 'router.dart';

@TypedGoRoute<NotFoundRoute>(
  path: Routes.notFound,
)
@immutable
class NotFoundRoute extends GoRouteData with $NotFoundRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const NotFoundScreen();
  }
}
