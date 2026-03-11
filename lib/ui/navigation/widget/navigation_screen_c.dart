import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen C — the destination after popping back two screens.
class NavigationScreenC extends StatelessWidget {
  const NavigationScreenC({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Screen C')),
    child: Center(
      child: Text('Arrived after pop 2 + push'),
    ),
  );
}
