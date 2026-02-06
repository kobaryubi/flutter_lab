import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/app_store/view_model/app_store_view_model.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

/// Screen that displays the platform's app store URL.
class AppStoreScreen extends StatelessWidget {
  const AppStoreScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('App Store')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(appStoreViewModelProvider);
    final viewModel = ref.read(appStoreViewModelProvider.notifier);

    useEffect(() {
      viewModel.fetchAppStoreUrl();
      return null;
    }, const []);

    final appStoreUrl = uiState.appStoreUrl;

    /// Opens the app store URL in the browser.
    Future<void> handleOpenAppStore() async {
      if (appStoreUrl case AsyncData(:final value)) {
        await launchUrl(value, mode: .externalApplication);
      }
    }

    return Column(
      crossAxisAlignment: .stretch,
      children: [
        if (appStoreUrl case AsyncData(:final value)) ...[
          Text('App Store URL: $value'),
          GestureDetector(
            onTap: handleOpenAppStore,
            child: const Text('Open App Store'),
          ),
        ],
      ],
    );
  }
}
