import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/analytics/view_model/analytics_view_model.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen for demonstrating Firebase Analytics event logging.
class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Analytics')),
    child: _Body(),
  );
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(analyticsViewModelProvider);
    final viewModel = ref.read(analyticsViewModelProvider.notifier);

    /// Sets default parameters for all future events.
    void handleSetDefaultParameters() {
      viewModel.setDefaultParameters();
    }

    /// Logs a custom analytics event.
    void handleLogEvent() {
      viewModel.logEvent();
    }

    return Center(
      child: Column(
        mainAxisAlignment: .center,
        children: [
          GestureDetector(
            onTap: handleSetDefaultParameters,
            child: const Text('Set Default Parameters'),
          ),

          if (uiState.setDefaultParameters is AsyncData)
            const Text('Default parameters set'),

          if (uiState.setDefaultParameters case AsyncError(:final error))
            Text('Error: $error'),

          const SizedBox(height: 32),

          GestureDetector(
            onTap: handleLogEvent,
            child: const Text('Log Event'),
          ),

          if (uiState.logEvent is AsyncData) const Text('Event logged'),

          if (uiState.logEvent case AsyncError(:final error))
            Text('Error: $error'),
        ],
      ),
    );
  }
}
