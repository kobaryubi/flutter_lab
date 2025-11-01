import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

class RoutingSlideScreen extends StatelessWidget {
  const RoutingSlideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layout(
      appBar: AppBar(
        title: Text('routing slide'),
      ),
      child: Placeholder(),
    );
  }
}
