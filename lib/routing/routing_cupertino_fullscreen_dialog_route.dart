part of 'router.dart';

@TypedGoRoute<RoutingCupertinoFullscreenDialogRoute>(
  path: Routes.routingCupertinoFullscreenDialog,
  name: 'routing_cupertino_fullscreen_dialog',
)
@immutable
class RoutingCupertinoFullscreenDialogRoute extends GoRouteData
    with $RoutingCupertinoFullscreenDialogRoute {
  @override
  CupertinoPage<void> buildPage(
    BuildContext context,
    GoRouterState state,
  ) => const CupertinoPage(
    fullscreenDialog: true,
    child: RoutingCupertinoFullscreenDialogScreen(),
  );
}
