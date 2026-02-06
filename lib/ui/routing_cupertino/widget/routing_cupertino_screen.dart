import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

class RoutingCupertinoScreen extends StatelessWidget {
  const RoutingCupertinoScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(
      title: Text('routing cupertino'),
    ),
    child: Placeholder(),
  );
}
