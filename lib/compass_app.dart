import 'package:flutter/material.dart';
import 'package:flutter_lab/ui/home/widgets/home_screen.dart';
import 'package:go_router/go_router.dart';

final _router = GoRouter(
  routes: [GoRoute(path: '/', builder: (context, state) => const HomeScreen())],
);

class CompassApp extends StatelessWidget {
  const CompassApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: _router);
  }
}
