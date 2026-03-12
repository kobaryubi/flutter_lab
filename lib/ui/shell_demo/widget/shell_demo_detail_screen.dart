import 'package:flutter/widgets.dart';
import 'package:flutter_lab/routing/pop_until.dart';
import 'package:flutter_lab/routing/routes.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/button.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Detail screen pushed from within the shell demo.
/// Used to test popUntil across ShellRoute boundaries.
class ShellDemoDetailScreen extends StatelessWidget {
  const ShellDemoDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// Pops routes until reaching Tab 1.
    void handlePopUntilTab1() {
      context.popUntil(
        (route) => route.path == Routes.shellDemoTab1,
      );
    }

    /// Pops routes until reaching Tab 2.
    void handlePopUntilTab2() {
      context.popUntil(
        (route) => route.path == Routes.shellDemoTab2,
      );
    }

    /// Pops routes until reaching the Sub screen.
    void handlePopUntilSub() {
      context.popUntil(
        (route) => route.path == Routes.shellDemoSub,
      );
    }

    /// Pops routes until reaching the Home screen.
    void handlePopUntilHome() {
      context.popUntil((route) => route.path == Routes.home);
    }

    return Layout(
      appBar: const AppBar(title: Text('Shell Detail')),
      child: Center(
        child: Column(
          mainAxisAlignment: .center,
          spacing: 16,
          children: [
            Button(
              onTap: handlePopUntilSub,
              label: 'popUntil Sub',
            ),
            Button(
              onTap: handlePopUntilTab1,
              label: 'popUntil Tab1',
            ),
            Button(
              onTap: handlePopUntilTab2,
              label: 'popUntil Tab2',
            ),
            Button(
              onTap: handlePopUntilHome,
              label: 'popUntil Home',
            ),
          ],
        ),
      ),
    );
  }
}
