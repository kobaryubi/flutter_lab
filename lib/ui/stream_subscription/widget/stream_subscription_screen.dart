import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen that demonstrates Stream and StreamSubscription usage with hooks.
///
/// Step 1: Basic usage of [useStreamController] and [useStream].
/// A button pushes integers into a stream controller, and the latest
/// value is displayed by subscribing to the stream via [useStream].
class StreamSubscriptionScreen extends HookWidget {
  const StreamSubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useStreamController<int>();
    final snapshot = useStream<int>(controller.stream);
    final counter = useRef<int>(0);

    /// Adds the next integer value to the stream controller.
    void handleAdd() {
      counter.value += 1;
      controller.add(counter.value);
    }

    return Layout(
      appBar: const AppBar(title: Text('Stream & Subscription')),
      child: Column(
        mainAxisAlignment: .center,
        spacing: 16,
        children: [
          Text('Latest value: ${snapshot.data ?? '-'}'),
          GestureDetector(
            onTap: handleAdd,
            child: const Text('Add value'),
          ),
        ],
      ),
    );
  }
}
