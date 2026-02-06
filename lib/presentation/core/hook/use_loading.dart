import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/presentation/core/provider/global_loading_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// State returned by [useLoading] for manual loading overlay control.
class UseLoadingState {
  const UseLoadingState({
    required this.show,
    required this.hide,
  });

  /// Shows the global loading overlay.
  final VoidCallback show;

  /// Hides the global loading overlay.
  final VoidCallback hide;
}

/// A hook that provides manual control over the global loading overlay.
///
/// Automatically hides the loading overlay when the widget is disposed.
UseLoadingState useLoading(WidgetRef ref) {
  final notifier = ref.read(globalLoadingProvider.notifier);

  useEffect(
    () => notifier.hide,
    [],
  );

  return UseLoadingState(
    show: notifier.show,
    hide: notifier.hide,
  );
}
