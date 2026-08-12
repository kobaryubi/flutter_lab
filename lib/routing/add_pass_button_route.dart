part of 'router.dart';

@TypedGoRoute<AddPassButtonRoute>(
  path: Routes.addPassButton,
  name: 'add_pass_button',
)
@immutable
class AddPassButtonRoute extends GoRouteData with $AddPassButtonRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AddPassButtonScreen();
}
