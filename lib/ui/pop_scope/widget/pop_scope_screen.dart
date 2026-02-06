import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:go_router/go_router.dart';

/// Screen that demonstrates PopScope widget functionality for handling
/// Android back button and swipe-back gestures.
class PopScopeScreen extends HookWidget {
  const PopScopeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final canPop = useState(false);

    /// Handles the pop invoked callback with result.
    // ignore: avoid_positional_boolean_parameters
    void handlePopInvokedWithResult(bool didPop, Object? _) {
      log(
        'onPopInvokedWithResult - didPop: $didPop, '
        'canPop: ${canPop.value}',
        name: 'PopScopeScreen',
      );
    }

    /// Toggles the canPop state.
    void handleToggleCanPop() {
      log(
        'Toggle canPop: ${canPop.value} -> ${!canPop.value}',
        name: 'PopScopeScreen',
      );
      canPop.value = !canPop.value;
    }

    /// Pops the current route.
    void handlePop() {
      context.pop();
    }

    return PopScope(
      canPop: canPop.value,
      onPopInvokedWithResult: handlePopInvokedWithResult,
      child: Layout(
        appBar: const AppBar(title: Text('PopScope')),
        child: _Body(
          canPop: canPop.value,
          onToggleCanPop: handleToggleCanPop,
          onPop: handlePop,
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.canPop,
    required this.onToggleCanPop,
    required this.onPop,
  });

  final bool canPop;
  final VoidCallback onToggleCanPop;
  final VoidCallback onPop;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      spacing: 16,
      children: [
        Text('canPop: $canPop'),
        GestureDetector(
          onTap: onToggleCanPop,
          child: const Text('Toggle canPop'),
        ),
        GestureDetector(
          onTap: onPop,
          child: const Text('Pop'),
        ),
      ],
    );
  }
}
