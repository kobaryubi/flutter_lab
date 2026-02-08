import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/presentation/core/provider/global_loading_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// A hook that controls the global loading overlay based on [isLoading].
///
/// Defers provider modifications to after the build phase using
/// [WidgetsBinding.addPostFrameCallback].
/// Automatically hides the loading overlay when the widget is disposed.
void useLoading({required WidgetRef ref, required bool isLoading}) {
  useEffect(
    () {
      final notifier = ref.read(globalLoadingProvider.notifier);
      WidgetsBinding.instance.addPostFrameCallback(
        (_) => isLoading ? notifier.show() : notifier.hide(),
      );

      return () => WidgetsBinding.instance.addPostFrameCallback(
        (_) => notifier.hide(),
      );
    },
    [isLoading],
  );
}
