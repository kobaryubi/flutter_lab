part of 'router.dart';

@TypedGoRoute<MethodChannelRoute>(
  path: Routes.methodChannel,
  name: 'method_channel',
)
@immutable
class MethodChannelRoute extends GoRouteData with $MethodChannelRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const MethodChannelScreen();
}
