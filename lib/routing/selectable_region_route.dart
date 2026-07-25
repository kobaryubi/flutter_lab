part of 'router.dart';

@TypedGoRoute<SelectableRegionRoute>(
  path: Routes.selectableRegion,
  name: 'selectable_region',
)
@immutable
class SelectableRegionRoute extends GoRouteData with $SelectableRegionRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SelectableRegionScreen();
}
