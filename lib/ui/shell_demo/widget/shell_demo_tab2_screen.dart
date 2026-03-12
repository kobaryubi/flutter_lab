import 'package:flutter/widgets.dart';
import 'package:flutter_lab/routing/router.dart';
import 'package:flutter_lab/ui/core/ui/button.dart';

/// Tab 2 content in the shell demo with a button to push a detail screen.
class ShellDemoTab2Screen extends StatelessWidget {
  const ShellDemoTab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    /// Pushes the detail screen onto the navigation stack.
    void handlePushDetail() {
      ShellDemoDetailRoute().push<void>(context);
    }

    return Center(
      child: Button(
        onTap: handlePushDetail,
        label: 'Push Detail',
      ),
    );
  }
}
