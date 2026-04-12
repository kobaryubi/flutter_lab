import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/button.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Home screen for the WebView tabs demo.
class WebViewTabsHomeScreen extends ConsumerWidget {
  const WebViewTabsHomeScreen({
    required this.onNavigateToTabs,
    super.key,
  });

  /// Callback to navigate to the tabs page.
  final VoidCallback onNavigateToTabs;

  @override
  Widget build(BuildContext context, WidgetRef ref) => Layout(
    appBar: const AppBar(title: Text('WebView Tabs Home')),
    child: Center(
      child: Button(
        onTap: onNavigateToTabs,
        label: 'Go to Tabs',
      ),
    ),
  );
}
