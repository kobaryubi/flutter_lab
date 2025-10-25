import 'package:flutter/widgets.dart';
import 'package:flutter_lab/routing/routes.dart';
import 'package:flutter_lab/ui/home/widgets/home_screen.dart';
import 'package:go_router/go_router.dart';

part 'home_route.g.dart';

@TypedGoRoute<HomeRoute>(
  path: Routes.home,
)
@immutable
class HomeRoute extends GoRouteData with $HomeRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}
