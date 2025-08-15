import 'package:flutter/material.dart';
import 'package:flutter_lab/routing/router.dart';

class CompassApp extends StatelessWidget {
  const CompassApp({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetsApp.router(
      routerConfig: router(),
      color: const Color(0x00ffffff),
      title: 'Compass App',
    );
  }
}
