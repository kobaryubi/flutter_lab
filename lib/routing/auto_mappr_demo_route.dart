part of 'router.dart';

@TypedGoRoute<AutoMapprDemoRoute>(
  path: Routes.autoMapprDemo,
)
@immutable
class AutoMapprDemoRoute extends GoRouteData with $AutoMapprDemoRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AutoMapprDemoScreen();
}
