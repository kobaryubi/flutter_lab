import 'package:flutter/widgets.dart';
import 'package:flutter_lab/routing/router.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/observer_demo/provider/observer_demo_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen that displays observer event logs in real-time.
///
/// Shows navigation lifecycle events (`didPush`, `didPop`, etc.)
/// captured by the `ObserverDemoObserver`.
class ObserverDemoScreen extends ConsumerWidget {
  const ObserverDemoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final events = ref.watch(observerDemoViewModelProvider);

    /// Navigates to the detail screen to trigger a `didPush` event.
    void handleNavigateToDetail() {
      ObserverDemoDetailRoute().push<void>(context);
    }

    /// Clears all logged observer events.
    void handleClearEvents() {
      ref.read(observerDemoViewModelProvider.notifier).clearEvents();
    }

    return Layout(
      appBar: const AppBar(title: Text('Observer Demo')),
      child: Column(
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
      ),
    );
  }
}
