part of 'router.dart';

@TypedGoRoute<AdfurikunRoute>(
  path: Routes.adfurikun,
  name: 'adfurikun',
)
@immutable
class AdfurikunRoute extends GoRouteData with $AdfurikunRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AdfurikunScreen();
}
