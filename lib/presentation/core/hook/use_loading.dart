import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/presentation/core/provider/global_loading_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// A hook that hides the global loading overlay when the widget is disposed
/// using [WidgetsBinding.addPostFrameCallback].
void useLoading({required WidgetRef ref}) {
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
