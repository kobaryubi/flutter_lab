import 'package:flutter/widgets.dart';
import 'package:flutter_lab/presentation/core/hook/use_top_route.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:go_router/go_router.dart' show GoRouterState;
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen that demonstrates the [useTopRoute] hook.
///
/// Reads the current route's [GoRouterState] via the hook and shows its
/// `matchedLocation` / `fullPath` / `uri`. Rebuilds automatically whenever
/// the user navigates.
class UseTopRouteScreen extends HookConsumerWidget {
  const UseTopRouteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topRoute = useTopRoute();

    return Layout(
      appBar: const AppBar(title: Text('Use Top Route')),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 8,
        children: [
          Text('matchedLocation: ${topRoute.matchedLocation}'),
          Text('fullPath: ${topRoute.fullPath}'),
          Text('uri: ${topRoute.uri}'),
          Text('pathParameters: ${topRoute.pathParameters}'),
        ],
      ),
    );
  }
}
