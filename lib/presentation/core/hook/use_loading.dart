import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/presentation/core/provider/global_loading_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// A hook that controls the global loading overlay based on [isLoading].
///
/// Automatically hides the loading overlay when the widget is disposed.
void useLoading({required WidgetRef ref, required bool isLoading}) {
  useEffect(
    () {
      final notifier = ref.read(globalLoadingProvider.notifier);
      isLoading ? notifier.show() : notifier.hide();
      return notifier.hide;
    },
    [isLoading],
  );
}
