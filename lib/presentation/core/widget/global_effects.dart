import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/routing/router.dart';
import 'package:go_router/go_router.dart';

/// Hosts app-level `useEffect` side effects that run once the root
/// [Navigator] is mounted. Uses [rootNavigatorKey] so navigator-dependent
/// APIs (e.g. `showGeneralDialog`) can run from above the router subtree.
class GlobalEffects extends HookWidget {
  const GlobalEffects({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final navigatorContext = rootNavigatorKey.currentContext;

        if (navigatorContext == null) return;

        showGeneralDialog<void>(
          context: navigatorContext,
          pageBuilder: buildDialog,
        );
      });

      return null;
    }, const []);

    return child;
  }

  /// Builds the content shown inside the app-level general dialog.
  Widget buildDialog(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    /// Closes the app-level dialog.
    void handleClose() => context.pop();

    return Center(
      child: Column(
        mainAxisSize: .min,
        spacing: 16,
        children: [
          const Text('Global Effects Dialog'),
          GestureDetector(
            onTap: handleClose,
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
