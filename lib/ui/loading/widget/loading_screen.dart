import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/presentation/core/hook/use_loading.dart';
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

    /// Shows or hides the global loading overlay based on the data state.
    useLoading(ref: ref, isLoading: uiState.data is AsyncLoading);

    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ref.read(loadingViewModelProvider.notifier).fetchData();
        });
        return null;
      },
      const [],
    );

    /// Reloads the data by triggering a new fetch.
    void handleReload() {
      ref.read(loadingViewModelProvider.notifier).fetchData();
    }

    return Column(
      mainAxisAlignment: .center,
      spacing: 16,
      children: [
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
