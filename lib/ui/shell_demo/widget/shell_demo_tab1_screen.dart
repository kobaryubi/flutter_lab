import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/presentation/core/hook/use_current_route_state.dart';
import 'package:flutter_lab/routing/router.dart';
import 'package:flutter_lab/routing/routes.dart';
import 'package:flutter_lab/ui/core/ui/button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Tab 1 content in the shell demo.
///
/// Demonstrates initializing the screen on tab activation: fires a
/// [useEffect] every time this tab becomes the active branch of the
/// surrounding `StatefulShellRoute`.
class ShellDemoTab1Screen extends HookConsumerWidget {
  const ShellDemoTab1Screen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routeState = useCurrentRouteState();
    final isActive = routeState.matchedLocation == Routes.shellDemoTab1;

    /// Logs whenever this tab transitions to the active branch.
    ///
    /// Both tab widgets stay mounted under `StatefulShellRoute`'s
    /// `IndexedStack`, so the effect runs on every tab switch — guard
    /// against the inactive transition so the work only happens when
    /// this tab becomes visible.
    useEffect(
      () {
        if (!isActive) return null;

        ref.read(loggerGatewayProvider).debug('Tab 1 activated');

        return null;
      },
      [isActive],
    );

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
