part of 'router.dart';

@TypedGoRoute<LoadingSubmitRoute>(
  path: Routes.loadingSubmit,
  name: 'loading_submit',
)
@immutable
class LoadingSubmitRoute extends GoRouteData with $LoadingSubmitRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const LoadingSubmitScreen();
}
