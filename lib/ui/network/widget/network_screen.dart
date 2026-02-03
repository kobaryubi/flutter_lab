import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/network/view_model/network_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen to check and display network connectivity status.
class NetworkScreen extends StatelessWidget {
  const NetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layout(
      appBar: AppBar(title: Text('Network')),
      child: _Body(),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(networkViewModelProvider);
    final viewModel = ref.read(networkViewModelProvider.notifier);

    /// Checks connectivity and displays the result.
    Future<void> handleCheckConnectivity() async {
      await viewModel.checkConnectivity();
    }

    final status = uiState.status;

    return Column(
      crossAxisAlignment: .stretch,
      children: [
        GestureDetector(
          onTap: handleCheckConnectivity,
          child: const Text('Check Connectivity'),
        ),
        if (status case AsyncData(:final value))
          Text('Connectivity: ${value.connectivityResult}'),
      ],
    );
  }
}
