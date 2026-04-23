part of 'router.dart';

@TypedGoRoute<ErrorHandlingRoute>(
  path: Routes.errorHandling,
  name: 'error_handling',
)
@immutable
class ErrorHandlingRoute extends GoRouteData with $ErrorHandlingRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ErrorHandlingScreen();
}
