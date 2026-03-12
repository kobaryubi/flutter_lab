import 'package:flutter/widgets.dart';
import 'package:flutter_lab/routing/pop_until.dart';
import 'package:flutter_lab/routing/router.dart';
import 'package:flutter_lab/routing/routes.dart';
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

    /// Pops two screens back to Home, then pushes Screen C.
    void handlePopTwoAndPush() {
      context
        ..pop()
        ..pop();
      NavigationScreenCRoute().push<void>(context);
    }

    /// Pops routes until reaching the Home screen using popUntil.
    void handlePopUntilHome() {
      context.popUntil((route) => route.path == Routes.home);
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
            Button(
              onTap: handlePopTwoAndPush,
              label: 'Pop 2 + Push Screen C',
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
