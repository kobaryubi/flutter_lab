import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_portal/flutter_portal.dart';

class PortalScreen extends StatelessWidget {
  const PortalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layout(
      appBar: AppBar(title: Text('portal')),
      child: Center(child: _Body()),
    );
  }
}

class _Body extends HookWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final isVisible = useState(false);

    return PortalTarget(
      visible: isVisible.value,
      anchor: const Aligned(
        follower: .bottomCenter,
        target: .topCenter,
      ),
      portalFollower: const Text('Hello from overlay!'),
      child: GestureDetector(
        onTap: () => isVisible.value = !isVisible.value,
        child: const Text('Tap me'),
      ),
    );
  }
}
