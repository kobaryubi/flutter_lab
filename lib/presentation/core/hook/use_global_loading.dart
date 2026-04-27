import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/presentation/core/provider/global_loading_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// A hook that syncs the global loading overlay with [isLoading].
///
/// Shows the overlay while [isLoading] is `true`, hides it when it becomes
/// `false`, and always hides it on dispose so the overlay does not leak
/// across screens.
void useGlobalLoading({required WidgetRef ref, required bool isLoading}) {
  /// Toggle the overlay whenever [isLoading] changes.
  ///
  /// Deferred via [WidgetsBinding.addPostFrameCallback] because `useEffect`
  /// fires inside the build phase, where mutating a Riverpod provider would
  /// throw "Tried to modify a provider while the widget tree was building".
  useEffect(
    () {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final notifier = ref.read(globalLoadingProvider.notifier);
        isLoading ? notifier.show() : notifier.hide();
      });

      return null;
    },
    [isLoading],
  );

  /// Hide the overlay when the host widget is disposed.
  final context = useContext();
  useEffect(
    () => () {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!context.mounted) return;

        ref.read(globalLoadingProvider.notifier).hide();
      });
    },
    const [],
  );
}
