import 'package:flutter/widgets.dart';
import 'package:flutter_lab/presentation/core/provider/global_error_widget_notifier.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Global overlay that displays widgets at the root level.
class GlobalErrorOverlay extends ConsumerWidget {
  const GlobalErrorOverlay({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final widget = ref.watch(globalErrorWidgetProvider);
    final isVisible = widget != null;

    return PortalTarget(
      visible: isVisible,
      portalFollower: widget,
      child: child,
    );
  }
}
