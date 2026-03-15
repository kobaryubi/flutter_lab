part of 'router.dart';

@TypedGoRoute<DialogStateRoute>(
  path: Routes.dialogState,
  name: 'dialog_state',
)
@immutable
class DialogStateRoute extends GoRouteData with $DialogStateRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const DialogStateScreen();
}
