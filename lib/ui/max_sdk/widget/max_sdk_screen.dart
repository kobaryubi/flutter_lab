import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/max_sdk/view_model/max_sdk_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen for testing AppLovin MAX SDK initialization.
class MaxSdkScreen extends StatelessWidget {
  const MaxSdkScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('MAX SDK')),
    child: _Body(),
  );
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(maxSdkViewModelProvider);
    final viewModel = ref.read(maxSdkViewModelProvider.notifier);

    /// Triggers MAX SDK initialization.
    void handleInitialize() {
      viewModel.initialize();
    }

    return Column(
      mainAxisAlignment: .center,
      spacing: 16,
      children: [
        if (uiState.configuration case AsyncLoading())
          const Text('Initializing...'),
        if (uiState.configuration case AsyncData(:final value))
          Text('Country code: ${value.countryCode}'),
        if (uiState.configuration case AsyncError(:final error))
          Text('Error: $error'),
        GestureDetector(
          onTap: handleInitialize,
          child: const Text('Initialize'),
        ),
      ],
    );
  }
}
