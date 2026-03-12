import 'package:flutter/widgets.dart';
import 'package:flutter_lab/routing/router.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/button.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Intermediate screen that can be stacked multiple times.
/// Used to build up a navigation stack for testing popUntil.
class ShellDemoSubScreen extends StatelessWidget {
  const ShellDemoSubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// Pushes another Sub screen onto the stack.
    void handlePushSub() {
      ShellDemoSubRoute().push<void>(context);
    }

    /// Pushes the Detail screen onto the stack.
    void handlePushDetail() {
      ShellDemoDetailRoute().push<void>(context);
    }

    return Layout(
      appBar: const AppBar(title: Text('Sub')),
      child: Center(
        child: Column(
          mainAxisAlignment: .center,
          spacing: 16,
          children: [
            Button(
              onTap: handlePushSub,
              label: 'Push Sub (stack more)',
            ),
            Button(
              onTap: handlePushDetail,
              label: 'Push Detail',
            ),
          ],
        ),
      ),
    );
  }
}
