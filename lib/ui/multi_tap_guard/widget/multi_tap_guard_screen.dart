import 'package:flutter/widgets.dart';
import 'package:flutter_lab/routing/router.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen that demonstrates how to prevent double navigation when two
/// navigation buttons are tapped simultaneously with multi-touch.
class MultiTapGuardScreen extends StatelessWidget {
  const MultiTapGuardScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Multi Tap Guard')),
    child: _Body(),
  );
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    /// Pushes NavigationScreenA. Intentionally unguarded for now, so tapping
    /// both buttons simultaneously reproduces double navigation.
    Future<void> handleNavigateToA() =>
        NavigationScreenARoute().push<void>(context);

    /// Pushes NavigationScreenB. Intentionally unguarded for now, so tapping
    /// both buttons simultaneously reproduces double navigation.
    Future<void> handleNavigateToB() =>
        NavigationScreenBRoute().push<void>(context);

    return Column(
      spacing: 8,
      children: [
        GestureDetector(
          onTap: handleNavigateToA,
          child: const Text('Go to Screen A'),
        ),
        GestureDetector(
          onTap: handleNavigateToB,
          child: const Text('Go to Screen B'),
        ),
      ],
    );
  }
}
