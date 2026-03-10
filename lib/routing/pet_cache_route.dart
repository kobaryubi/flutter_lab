part of 'router.dart';

@TypedGoRoute<PetCacheRoute>(
  path: Routes.petCache,
)
@immutable
class PetCacheRoute extends GoRouteData with $PetCacheRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PetCacheScreen();
}
