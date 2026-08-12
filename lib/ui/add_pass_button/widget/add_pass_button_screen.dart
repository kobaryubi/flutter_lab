import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_lab/data/platform/view_type_names.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:go_router/go_router.dart';

/// Screen reproducing the issue where the border of a native
/// `PKAddPassButton` (embedded via [UiKitView]) bleeds through a dialog
/// shown with [showGeneralDialog].
class AddPassButtonScreen extends StatelessWidget {
  const AddPassButtonScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Add Pass Button')),
    child: _Body(),
  );
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    /// Opens a dialog over the native button.
    void handleOpenDialog() {
      showGeneralDialog<void>(
        context: context,
        pageBuilder:
            (
              BuildContext dialogContext,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) => const _DialogContent(),
      );
    }

    return Center(
      child: Column(
        mainAxisAlignment: .center,
        spacing: 16,
        children: [
          const _AddPassButtonView(),
          GestureDetector(
            onTap: handleOpenDialog,
            child: const Text('Open Dialog'),
          ),
        ],
      ),
    );
  }
}

/// Displays the native "Add to Apple Wallet" button.
///
/// iOS only: embeds a `PKAddPassButton` via [UiKitView].
class _AddPassButtonView extends StatelessWidget {
  const _AddPassButtonView();

  @override
  Widget build(BuildContext context) {
    if (!Platform.isIOS) {
      return const Text('PKAddPassButton is available on iOS only');
    }

    // ModalRoute.isCurrentOf registers a dependency on the enclosing
    // route's status, so this widget rebuilds automatically whenever
    // another route (a dialog included) is pushed above or popped.
    // Hiding the platform view then prevents its border from bleeding
    // through the Flutter-rendered dialog, with no coordination needed
    // at any showDialog call site.
    final isRouteCurrent = ModalRoute.isCurrentOf(context) ?? true;

    if (!isRouteCurrent) {
      return const SizedBox(width: 240, height: 48);
    }

    return const SizedBox(
      width: 240,
      height: 48,
      child: UiKitView(viewType: ViewTypeNames.addPassButton),
    );
  }
}

/// Dialog content shown over the native button.
class _DialogContent extends StatelessWidget {
  const _DialogContent();

  @override
  Widget build(BuildContext context) {
    /// Closes the dialog.
    void handleClose() {
      context.pop();
    }

    return Center(
      child: Container(
        width: 300,
        height: 400,
        padding: const .all(24),
        color: const Color(0xFFFFFFFF),
        child: Column(
          mainAxisAlignment: .center,
          spacing: 16,
          children: [
            const Text('Dialog over PKAddPassButton'),
            GestureDetector(
              onTap: handleClose,
              child: const Text('Close'),
            ),
          ],
        ),
      ),
    );
  }
}
