import 'package:flutter/widgets.dart';
import 'package:flutter_lab/domain/entity/launch_url/launch_url_mode.dart';
import 'package:flutter_lab/routing/router.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/button.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen that navigates to the launch URL detail screen with
/// a selected [LaunchUrlMode].
class LaunchUrlScreen extends StatelessWidget {
  const LaunchUrlScreen({required this.url, super.key});

  final String url;

  @override
  Widget build(BuildContext context) {
    /// Navigates to the detail screen with [LaunchUrlMode.externalApplication].
    void handleExternalApplication() {
      LaunchUrlDetailRoute(url: url, mode: .externalApplication).go(context);
    }

    /// Navigates to the detail screen with [LaunchUrlMode.inAppBrowserView].
    void handleInAppBrowserView() {
      LaunchUrlDetailRoute(url: url, mode: .inAppBrowserView).go(context);
    }

    return Layout(
      appBar: const AppBar(
        title: Text('launch url'),
      ),
      child: Center(
        child: Column(
          mainAxisSize: .min,
          spacing: 16,
          children: [
            Button(
              label: 'external application',
              onTap: handleExternalApplication,
            ),
            Button(
              label: 'in app browser view',
              onTap: handleInAppBrowserView,
            ),
          ],
        ),
      ),
    );
  }
}
