import 'package:flutter/widgets.dart';
import 'package:flutter_lab/routing/router.dart';
import 'package:flutter_lab/ui/core/ui/button.dart';

/// Tab 1 content in the shell demo.
class ShellDemoTab1Screen extends StatelessWidget {
  const ShellDemoTab1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    /// Pushes the Sub screen onto the navigation stack.
    void handlePushSub() {
      ShellDemoSubRoute().push<void>(context);
    }

    return Center(
      child: Button(
        onTap: handlePushSub,
        label: 'Push Sub',
      ),
    );
  }
}
