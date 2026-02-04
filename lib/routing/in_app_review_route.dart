part of 'router.dart';

@TypedGoRoute<InAppReviewRoute>(
  path: Routes.inAppReview,
)
@immutable
class InAppReviewRoute extends GoRouteData with $InAppReviewRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const InAppReviewScreen();
  }
}
