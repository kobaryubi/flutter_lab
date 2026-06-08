import 'package:flutter/widgets.dart';
import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/hook/use_shell_screen_initialization.dart';
import 'package:flutter_lab/routing/router.dart';
import 'package:flutter_lab/routing/routes.dart';
import 'package:flutter_lab/ui/core/ui/button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Tab 1 content in the shell demo.
///
/// Demonstrates initializing the screen on tab activation: runs
/// [useShellScreenInitialization] every time this tab becomes the active
/// branch of the surrounding `StatefulShellRoute`, plus on return and
/// foreground resume.
class ShellDemoTab1Screen extends HookConsumerWidget {
  const ShellDemoTab1Screen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// Logs whenever this tab becomes the active branch.
    void handleInitialize() {
      ref.read(loggerGatewayProvider).debug('Tab 1 activated');
    }

    useShellScreenInitialization(
      Routes.shellDemoTab1,
      onInitialize: handleInitialize,
    );

    /// Pushes the Sub screen onto the navigation stack.
    void handlePushSub() {
      ShellDemoSubRoute().push<void>(context);
    }

    return Center(
      child: Button(
        onTap: handlePushSub,
        label: 'Push Sub',
      ),
    );
  }
}
