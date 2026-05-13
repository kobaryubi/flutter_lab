import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/mock_logged_in/view_model/mock_logged_in_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Mock logged-in screen used to demonstrate post-login navigation to a
/// pending target screen captured from a push-notification tap.
class MockLoggedInScreen extends ConsumerWidget {
  const MockLoggedInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(mockLoggedInViewModelProvider);

    return Layout(
      appBar: const AppBar(title: Text('Mock Logged In')),
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
