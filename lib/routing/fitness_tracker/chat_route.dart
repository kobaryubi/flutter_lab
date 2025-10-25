part of '../router.dart';

@immutable
class ChatRoute extends GoRouteData with $ChatRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ChatScreen();
  }
}
