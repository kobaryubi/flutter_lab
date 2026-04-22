import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/presentation/core/provider/global_snackbar_notifier.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Global overlay that shows a transient message at the bottom of the
/// content area. The message auto-dismisses after [_duration].
class GlobalSnackbarOverlay extends HookConsumerWidget {
  const GlobalSnackbarOverlay({required this.child, super.key});

  static const _duration = Duration(seconds: 2);

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final message = ref.watch(globalSnackbarProvider);

    useEffect(() {
      if (message == null) return null;

      final timer = Timer(_duration, () {
        ref.read(globalSnackbarProvider.notifier).dismiss();
      });

      return timer.cancel;
    }, [message?.id]);

    return PortalTarget(
      visible: message != null,
      portalFollower: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ColoredBox(
            color: const Color(0xCC000000),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              child: DefaultTextStyle(
                style: const TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 14,
                ),
                child: Text(message?.text ?? ''),
              ),
            ),
          ),
        ),
      ),
      child: child,
    );
  }
}
