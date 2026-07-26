part of 'router.dart';

@TypedGoRoute<SelectionAreaRoute>(
  path: Routes.selectionArea,
  name: 'selection_area',
)
@immutable
class SelectionAreaRoute extends GoRouteData with $SelectionAreaRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SelectionAreaScreen();
}
