import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class Layout extends StatelessWidget {
  const Layout({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return navigationShell;
  }
}
