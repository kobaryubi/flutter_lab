part of 'router.dart';

@TypedGoRoute<RoutingCupertinoFullscreenDialogRoute>(
  path: Routes.routingCupertinoFullscreenDialog,
)
@immutable
class RoutingCupertinoFullscreenDialogRoute extends GoRouteData
    with $RoutingCupertinoFullscreenDialogRoute {
  @override
  CupertinoPage<void> buildPage(
    BuildContext context,
    GoRouterState state,
  ) {
    return const CupertinoPage(
      fullscreenDialog: true,
      child: RoutingCupertinoFullscreenDialogScreen(),
    );
  }
}
