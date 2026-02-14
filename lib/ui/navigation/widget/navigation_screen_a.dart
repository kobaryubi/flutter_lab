import 'package:flutter/widgets.dart';
import 'package:flutter_lab/routing/router.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/button.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen A in the navigation testing flow.
class NavigationScreenA extends StatelessWidget {
  const NavigationScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    /// Pushes Screen B onto the navigation stack.
    void handlePushScreenB() {
      NavigationScreenBRoute().push<void>(context);
    }

    return Layout(
      appBar: const AppBar(title: Text('Screen A')),
      child: Center(
        child: Button(
          onTap: handlePushScreenB,
          label: 'Push Screen B',
        ),
      ),
    );
  }
}
