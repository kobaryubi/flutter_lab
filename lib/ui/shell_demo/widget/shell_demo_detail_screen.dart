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
    /// Pops routes until reaching the Home screen.
    void handlePopUntilHome() {
      context.popUntil((route) => route.path == Routes.home);
    }

    return Layout(
      appBar: const AppBar(title: Text('Shell Detail')),
      child: Center(
        child: Button(
          onTap: handlePopUntilHome,
          label: 'popUntil Home',
        ),
      ),
    );
  }
}
