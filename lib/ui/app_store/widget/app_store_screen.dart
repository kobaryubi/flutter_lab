import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/app_store/view_model/app_store_view_model.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

/// Screen that opens the platform's app store page.
class AppStoreScreen extends StatelessWidget {
  const AppStoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layout(
      appBar: AppBar(title: Text('App Store')),
      child: _Body(),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(appStoreViewModelProvider.notifier);

    /// Opens the app store URL in the platform handler.
    Future<void> handleOpenAppStore() async {
      final url = viewModel.getAppStoreUrl().getOrNull();
      if (url == null) return;
      await launchUrl(url);
    }

    return GestureDetector(
      onTap: handleOpenAppStore,
      child: const Text('Open App Store'),
    );
  }
}
