import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/presentation/core/hook/use_url_navigation.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/url_navigation/view_model/url_navigation_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen for testing URL navigation determination.
class UrlNavigationScreen extends StatelessWidget {
  const UrlNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layout(
      appBar: AppBar(title: Text('URL Navigation')),
      child: _Body(),
    );
  }
}

class _Body extends HookConsumerWidget {
  const _Body();

  static const _testUrls = [
    'https://example.com/page',
    'http://example.com/page',
    'https://example.com/page?openExternalBrowser=1',
    'https://example.com/page?openExternalBrowser=0',
    'https://evil.com/malware',
    'https://unknown.com/path',
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(urlNavigationViewModelProvider.notifier);

    useEffect(() {
      unawaited(viewModel.fetch());
      return null;
    }, []);

    final urlNavigationState = useUrlNavigation(
      viewModel.determineDestination,
    );

    return Column(
      crossAxisAlignment: .start,
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: _testUrls.length,
            itemBuilder: (BuildContext context, int index) {
              final url = _testUrls[index];

              /// Determines navigation for the tapped URL.
              Future<void> handleTap() async {
                await urlNavigationState.handleUrlNavigation(url: url);
              }

              return GestureDetector(
                behavior: .opaque,
                onTap: handleTap,
                child: Text(url),
              );
            },
          ),
        ),
      ],
    );
  }
}
