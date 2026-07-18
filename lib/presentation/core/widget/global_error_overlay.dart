import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/presentation/core/observer/back_button_swallow_observer.dart';
import 'package:flutter_lab/presentation/core/provider/global_error_widget_notifier.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Global overlay that displays widgets at the root level.
class GlobalErrorOverlay extends HookConsumerWidget {
  const GlobalErrorOverlay({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final widget = ref.watch(globalErrorWidgetProvider);
    final isVisible = widget != null;

    final observer = useMemoized(BackButtonSwallowObserver.new);

    useEffect(() {
      WidgetsBinding.instance.addObserver(observer);

      return () => WidgetsBinding.instance.removeObserver(observer);
    }, [observer]);

    return PortalTarget(
      visible: isVisible,
      portalFollower: widget,
      child: child,
    );
  }
}
