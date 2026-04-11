import 'dart:async';

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
/// Step 3: Manually manages a [StreamSubscription] to a [Stream.periodic]
/// inside [useEffect], demonstrating the raw subscription lifecycle that
/// the hooks above wrap.
/// Step 4: Uses a broadcast [StreamController] so multiple listeners can
/// subscribe to the same stream. A single-subscription controller throws
/// `Bad state: Stream has already been listened to` once a second
/// listener calls `.listen`, because each `useStream` and
/// `useOnStreamChange` call attaches its own subscription.
class StreamSubscriptionScreen extends HookWidget {
  const StreamSubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useMemoized(StreamController<int>.broadcast);
    useEffect(() => controller.close, [controller]);

    final snapshot = useStream<int>(controller.stream);
    final counter = useRef<int>(0);
    final sum = useState<int>(0);
    final maxValue = useState<int>(0);
    final tick = useState<int>(0);

    /// Accumulates incoming stream values into the running sum.
    ///
    /// Runs as a side effect each time the stream emits, independent
    /// of the snapshot used for display.
    void handleStreamValue(int value) {
      sum.value += value;
    }

    useOnStreamChange<int>(controller.stream, onData: handleStreamValue);

    /// Tracks the largest value seen on the stream.
    ///
    /// Attaches a second listener to the same broadcast stream — only
    /// possible because the controller is broadcast. With a
    /// single-subscription controller, this second `.listen` call would
    /// throw at runtime.
    void handleMaxValue(int value) {
      if (value > maxValue.value) {
        maxValue.value = value;
      }
    }

    useOnStreamChange<int>(controller.stream, onData: handleMaxValue);

    /// Subscribes to a periodic stream on mount and cancels on dispose.
    ///
    /// Shows the raw [StreamSubscription] lifecycle: the effect creates
    /// the subscription, and the returned cleanup callback cancels it
    /// when the widget unmounts. Without this cancel, the timer would
    /// keep firing after disposal and leak.
    useEffect(() {
      final periodic = Stream<int>.periodic(
        const Duration(seconds: 1),
        (count) => count + 1,
      );
      final subscription = periodic.listen((value) {
        tick.value = value;
      });

      return subscription.cancel;
    }, const []);

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
          Text('Max: ${maxValue.value}'),
          Text('Periodic tick: ${tick.value}'),
          GestureDetector(
            onTap: handleAdd,
            child: const Text('Add value'),
          ),
        ],
      ),
    );
  }
}
