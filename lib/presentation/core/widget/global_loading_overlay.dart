import 'package:flutter/widgets.dart';
import 'package:flutter_lab/presentation/core/provider/global_loading_notifier.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Global overlay that displays a full-screen loading indicator.
class GlobalLoadingOverlay extends ConsumerWidget {
  const GlobalLoadingOverlay({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(globalLoadingProvider);

    return PortalTarget(
      visible: isLoading,
      portalFollower: const ColoredBox(
        color: Color(0x80000000),
        child: Center(
          child: SizedBox.square(
            dimension: 40,
            child: ColoredBox(color: Color(0xFF666666)),
          ),
        ),
      ),
      child: child,
    );
  }
}
