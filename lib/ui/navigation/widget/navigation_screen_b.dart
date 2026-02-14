import 'package:flutter/widgets.dart';
import 'package:flutter_lab/routing/router.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/button.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:go_router/go_router.dart';

/// Screen B in the navigation testing flow.
class NavigationScreenB extends StatelessWidget {
  const NavigationScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    /// Navigates back to Home, skipping Screen A.
    void handleBack() {
      HomeRoute().go(context);
    }

    /// Pops once to return to Screen A.
    void handleClose() {
      context.pop();
    }

    return Layout(
      appBar: const AppBar(title: Text('Screen B')),
      child: Center(
        child: Column(
          mainAxisAlignment: .center,
          spacing: 16,
          children: [
            Button(
              onTap: handleBack,
              label: 'Back (pop to Home)',
            ),
            Button(
              onTap: handleClose,
              label: 'Close (pop to Screen A)',
            ),
          ],
        ),
      ),
    );
  }
}
