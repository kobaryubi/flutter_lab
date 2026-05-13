import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/logged_in_home/view_model/logged_in_home_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Landing screen shown after login. Reads the pending target screen
/// captured from a push-notification tap and exposes it for the view layer
/// to navigate to.
class LoggedInHomeScreen extends HookConsumerWidget {
  const LoggedInHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(loggedInHomeViewModelProvider);
    final viewModel = ref.read(loggedInHomeViewModelProvider.notifier);

    useEffect(() {
      viewModel.consumePendingTargetScreen();
      return null;
    }, const []);

    return Layout(
      appBar: const AppBar(title: Text('Logged In Home')),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 8,
        children: [
          Text('targetScreen: ${uiState.targetScreen ?? "none"}'),
        ],
      ),
    );
  }
}
