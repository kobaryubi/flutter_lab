import 'package:flutter/widgets.dart';
import 'package:flutter_lab/hook/use_route_aware.dart';
import 'package:flutter_lab/routing/app_route_observer.dart';
import 'package:flutter_lab/routing/router.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/route_aware_demo/provider/route_aware_demo_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen that displays route-aware event logs in real-time.
///
/// Uses the `useRouteAware` hook to subscribe to all four [RouteAware]
/// lifecycle events and logs them with timestamps.
class RouteAwareDemoScreen extends StatelessWidget {
  const RouteAwareDemoScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Route Aware Demo')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final events = ref.watch(routeAwareDemoViewModelProvider);

    /// Logs a route-aware event with a timestamp.
    ///
    /// Wrapped in [Future] because [RouteAware] callbacks fire during the
    /// widget tree build, and modifying a provider during build is not allowed.
    void handleEvent(String name) {
      Future(() {
        final timestamp = DateTime.now().toIso8601String().substring(11, 23);

        ref
            .read(routeAwareDemoViewModelProvider.notifier)
            .addEvent(event: '[$timestamp] $name');
      });
    }

    useRouteAware(
      appRouteObserver,
      didPush: () => handleEvent('didPush'),
      didPop: () => handleEvent('didPop'),
      didPushNext: () => handleEvent('didPushNext'),
      didPopNext: () => handleEvent('didPopNext'),
    );

    /// Navigates to the detail screen to trigger route-aware events.
    void handleNavigateToDetail() {
      RouteAwareDemoDetailRoute().push<void>(context);
    }

    /// Clears all logged route-aware events.
    void handleClearEvents() {
      ref.read(routeAwareDemoViewModelProvider.notifier).clearEvents();
    }

    return Column(
      children: [
        Padding(
          padding: const .all(16),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: handleNavigateToDetail,
                  child: const Text('Go to Detail'),
                ),
              ),
              GestureDetector(
                onTap: handleClearEvents,
                child: const Text('Clear Log'),
              ),
            ],
          ),
        ),

        Expanded(
          child: ListView.builder(
            itemCount: events.length,
            itemBuilder: (BuildContext context, int index) => Padding(
              padding: const .symmetric(horizontal: 16, vertical: 4),
              child: Text(events[index]),
            ),
          ),
        ),
      ],
    );
  }
}
