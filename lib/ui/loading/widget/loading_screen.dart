import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/presentation/core/widget/spinning_indicator.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/loading/view_model/loading_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen that demonstrates showing a loading state while data is fetched.
class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Loading')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(loadingViewModelProvider);
    final viewModel = ref.read(loadingViewModelProvider.notifier);

    useEffect(
      () {
        viewModel.fetchData();
        return null;
      },
      const [],
    );

    /// Reloads the data by triggering a new fetch.
    void handleReload() {
      viewModel.fetchData();
    }

    return Column(
      mainAxisAlignment: .center,
      spacing: 16,
      children: [
        if (uiState.data case AsyncLoading()) const SpinningIndicator(),
        if (uiState.data case AsyncData(:final value)) Text(value),
        if (uiState.data case AsyncError(:final error)) Text('Error: $error'),
        GestureDetector(
          onTap: handleReload,
          child: const Text('Reload'),
        ),
      ],
    );
  }
}
