import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_portal/flutter_portal.dart';

class PortalScreen extends StatelessWidget {
  const PortalScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
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
      modal: _Menu(onClose: handleClose),
      child: GestureDetector(
        onTap: handleOpen,
        child: const Text('Show Menu'),
      ),
    );
  }
}

/// Menu widget containing menu items.
class _Menu extends StatelessWidget {
  const _Menu({required this.onClose});

  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) => ColoredBox(
    color: const Color(0xFFFFFFFF),
    child: Column(
      mainAxisSize: .min,
      crossAxisAlignment: .start,
      children: [
        _MenuItem(text: 'First', onTap: onClose),
        _MenuItem(text: 'Second', onTap: onClose),
      ],
    ),
  );
}

/// Individual menu item.
class _MenuItem extends StatelessWidget {
  const _MenuItem({required this.text, required this.onTap});

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: const .all(12),
      child: Text(text),
    ),
  );
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
  Widget build(BuildContext context) => PortalTarget(
    visible: visible,
    portalFollower: ModalBarrier(
      onDismiss: onClose,
      color: const Color(0x80000000),
    ),
    child: PortalTarget(
      visible: visible,
      anchor: const Aligned(
        follower: .topLeft,
        target: .bottomLeft,
      ),
      portalFollower: modal,
      child: child,
    ),
  );
}
