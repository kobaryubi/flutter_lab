import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/presentation/core/hook/use_current_route_state.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:go_router/go_router.dart' show GoRouterState;
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen that demonstrates the [useCurrentRouteState] hook.
///
/// Reads the current route's [GoRouterState] via the hook and shows its
/// `matchedLocation` / `fullPath` / `uri`. Rebuilds automatically whenever
/// the user navigates.
class CurrentRouteStateScreen extends HookConsumerWidget {
  const CurrentRouteStateScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routeState = useCurrentRouteState();

    /// Logs every change of [GoRouterState.matchedLocation] while this
    /// screen is mounted, for debugging the [useCurrentRouteState] hook.
    useEffect(
      () {
        ref
            .read(loggerGatewayProvider)
            .debug(
              'Current route changed: '
              'matchedLocation=${routeState.matchedLocation}, '
              'fullPath=${routeState.fullPath}, '
              'uri=${routeState.uri}',
            );

        return null;
      },
      [routeState.matchedLocation],
    );

    return Layout(
      appBar: const AppBar(title: Text('Current Route State')),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 8,
        children: [
          Text('matchedLocation: ${routeState.matchedLocation}'),
          Text('fullPath: ${routeState.fullPath}'),
          Text('uri: ${routeState.uri}'),
          Text('pathParameters: ${routeState.pathParameters}'),
        ],
      ),
    );
  }
}
