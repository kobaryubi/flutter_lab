import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/firebase_performance/view_model/firebase_performance_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen for demonstrating Firebase Performance custom code traces.
class FirebasePerformanceScreen extends StatelessWidget {
  const FirebasePerformanceScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Firebase Performance')),
    child: _Body(),
  );
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(firebasePerformanceViewModelProvider);
    final viewModel = ref.read(
      firebasePerformanceViewModelProvider.notifier,
    );

    /// Starts a custom trace.
    void handleStartTrace() {
      viewModel.startTrace();
    }

    /// Increments a metric on the active trace.
    void handleIncrementMetric() {
      viewModel.incrementMetric();
    }

    /// Sets a custom attribute on the active trace.
    void handlePutAttribute() {
      viewModel.putAttribute();
    }

    /// Stops the active trace.
    void handleStopTrace() {
      viewModel.stopTrace();
    }

    return Center(
      child: Column(
        mainAxisAlignment: .center,
        children: [
          GestureDetector(
            onTap: handleStartTrace,
            child: const Text('Start Trace'),
          ),

          if (uiState.startTrace case AsyncData(:final value))
            Text('Trace started: $value'),

          if (uiState.startTrace case AsyncError(:final error))
            Text('Error: $error'),

          const SizedBox(height: 32),

          GestureDetector(
            onTap: handleIncrementMetric,
            child: const Text('Increment Metric'),
          ),

          if (uiState.incrementMetric is AsyncData)
            const Text('Metric incremented'),

          if (uiState.incrementMetric case AsyncError(:final error))
            Text('Error: $error'),

          const SizedBox(height: 32),

          GestureDetector(
            onTap: handlePutAttribute,
            child: const Text('Put Attribute'),
          ),

          if (uiState.putAttribute is AsyncData) const Text('Attribute set'),

          if (uiState.putAttribute case AsyncError(:final error))
            Text('Error: $error'),

          const SizedBox(height: 32),

          GestureDetector(
            onTap: handleStopTrace,
            child: const Text('Stop Trace'),
          ),

          if (uiState.stopTrace is AsyncData) const Text('Trace stopped'),

          if (uiState.stopTrace case AsyncError(:final error))
            Text('Error: $error'),
        ],
      ),
    );
  }
}
