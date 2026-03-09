import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/profile_passport/view_model/profile_passport_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen for demonstrating ProfilePassport SDK integration.
class ProfilePassportScreen extends StatelessWidget {
  const ProfilePassportScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('ProfilePassport')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(profilePassportViewModelProvider);
    final viewModel = ref.read(profilePassportViewModelProvider.notifier);

    /// Starts the PPSDK service.
    void handleStartService() {
      viewModel.startService();
    }

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: .start,
        children: [
          GestureDetector(
            onTap: handleStartService,
            child: const Text('Start Service'),
          ),

          if (uiState.startService case AsyncData())
            const Text('Service started successfully'),

          if (uiState.startService case AsyncError(:final error))
            Text('Error: $error'),
        ],
      ),
    );
  }
}
