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
      child: Column(
        mainAxisAlignment: .center,
        children: [
          _SimpleOverlay(),
          SizedBox(height: 32),
          _ContextualMenu(),
        ],
      ),
    );
  }
}

class _SimpleOverlay extends HookWidget {
  const _SimpleOverlay();

  @override
  Widget build(BuildContext context) {
    final isVisible = useState(false);

    /// Toggles the visibility of the portal overlay.
    void handleTap() {
      isVisible.value = !isVisible.value;
    }

    return PortalTarget(
      visible: isVisible.value,
      anchor: const Aligned(
        follower: .bottomCenter,
        target: .topCenter,
      ),
      portalFollower: const Text('Hello from overlay!'),
      child: GestureDetector(
        onTap: handleTap,
        child: const Text('Tap me'),
      ),
    );
  }
}

/// Contextual menu using _ModalEntry.
class _ContextualMenu extends HookWidget {
  const _ContextualMenu();

  @override
  Widget build(BuildContext context) {
    final showMenu = useState(false);

    /// Shows the menu.
    void handleOpen() {
      showMenu.value = true;
    }

    /// Hides the menu.
    void handleClose() {
      showMenu.value = false;
    }

    return _ModalEntry(
      visible: showMenu.value,
      onClose: handleClose,
      modal: Column(
        mainAxisSize: .min,
        crossAxisAlignment: .start,
        children: [
          GestureDetector(
            onTap: handleClose,
            child: const Text('First'),
          ),
          GestureDetector(
            onTap: handleClose,
            child: const Text('Second'),
          ),
        ],
      ),
      child: GestureDetector(
        onTap: handleOpen,
        child: const Text('Show Menu'),
      ),
    );
  }
}

/// Reusable modal entry widget for showing overlay content.
class _ModalEntry extends StatelessWidget {
  const _ModalEntry({
    required this.visible,
    required this.onClose,
    required this.modal,
    required this.child,
  });

  final bool visible;
  final VoidCallback onClose;
  final Widget modal;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return PortalTarget(
      visible: visible,
      anchor: const Aligned(
        follower: .topLeft,
        target: .bottomLeft,
      ),
      portalFollower: GestureDetector(
        behavior: .opaque,
        onTap: onClose,
        child: modal,
      ),
      child: IgnorePointer(
        ignoring: visible,
        child: child,
      ),
    );
  }
}
