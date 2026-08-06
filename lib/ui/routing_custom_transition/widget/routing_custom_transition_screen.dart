import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen opened with a `CustomTransitionPage` slide-up transition.
class RoutingCustomTransitionScreen extends StatelessWidget {
  const RoutingCustomTransitionScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(
      title: Text('routing custom transition'),
    ),
    child: Placeholder(),
  );
}
