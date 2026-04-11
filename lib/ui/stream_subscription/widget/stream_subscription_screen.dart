import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen that demonstrates Stream and StreamSubscription usage with hooks.
///
/// Step 1: Basic usage of [useStreamController] and [useStream].
/// Step 2: Reacts to new stream values as a side effect via
/// [useOnStreamChange], accumulating a sum without rebuilding from
/// the snapshot.
class StreamSubscriptionScreen extends HookWidget {
  const StreamSubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useStreamController<int>();
    final snapshot = useStream<int>(controller.stream);
    final counter = useRef<int>(0);
    final sum = useState<int>(0);

    /// Accumulates incoming stream values into the running sum.
    ///
    /// Runs as a side effect each time the stream emits, independent
    /// of the snapshot used for display.
    void handleStreamValue(int value) {
      sum.value += value;
    }

    useOnStreamChange<int>(controller.stream, onData: handleStreamValue);

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
          Text('Sum: ${sum.value}'),
          GestureDetector(
            onTap: handleAdd,
            child: const Text('Add value'),
          ),
        ],
      ),
    );
  }
}
