part of 'router.dart';

@TypedGoRoute<DialogStateRoute>(
  path: Routes.dialogState,
)
@immutable
class DialogStateRoute extends GoRouteData with $DialogStateRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const DialogStateScreen();
}
