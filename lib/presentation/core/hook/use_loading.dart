import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/presentation/core/provider/global_loading_notifier.dart';
import 'package:flutter_lab/ui/loading/view_model/loading_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// A hook that manages the global loading overlay.
///
/// Listens to [loadingViewModelProvider] to show/hide the overlay,
/// and ensures the overlay is hidden when the widget is disposed
/// using [WidgetsBinding.addPostFrameCallback].
void useLoading({required WidgetRef ref}) {
  ref.listen(
    loadingViewModelProvider.select(
      (uiState) => uiState.data is AsyncLoading,
    ),
    (previous, isLoading) {
      final notifier = ref.read(globalLoadingProvider.notifier);
      isLoading ? notifier.show() : notifier.hide();
    },
  );

  useEffect(
    () => () {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(globalLoadingProvider.notifier).hide();
      });
    },
    const [],
  );
}
