import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/presentation/core/hook/use_global_loading.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/loading_submit/view_model/loading_submit_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen that demonstrates a single global loading overlay covering both an
/// initial data fetch and a subsequent form submission.
class LoadingSubmitScreen extends StatelessWidget {
  const LoadingSubmitScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Loading + Submit')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(loadingSubmitViewModelProvider);

    final isFetching = uiState.data is AsyncLoading;
    final isSubmitting = uiState.submit is AsyncLoading;

    /// Show the global overlay while either operation is in flight.
    useGlobalLoading(
      ref: ref,
      isLoading: isFetching || isSubmitting,
    );

    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ref.read(loadingSubmitViewModelProvider.notifier).fetchData();
        });

        return null;
      },
      const [],
    );

    /// Triggers a new data fetch.
    void handleReload() {
      ref.read(loadingSubmitViewModelProvider.notifier).fetchData();
    }

    /// Triggers a new form submission.
    void handleSubmit() {
      ref.read(loadingSubmitViewModelProvider.notifier).submit();
    }

    return Column(
      mainAxisAlignment: .center,
      spacing: 16,
      children: [
        if (uiState.data case AsyncData(:final value)) Text(value),
        if (uiState.data case AsyncError(:final error)) Text('Error: $error'),
        if (uiState.submit case AsyncData()) const Text('Submitted!'),
        if (uiState.submit case AsyncError(:final error))
          Text('Submit error: $error'),
        GestureDetector(
          onTap: handleReload,
          child: const Text('Reload'),
        ),
        GestureDetector(
          onTap: handleSubmit,
          child: const Text('Submit'),
        ),
      ],
    );
  }
}
