import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/button.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchUrlScreen extends StatelessWidget {
  const LaunchUrlScreen({required this.url, super.key});

  final String url;

  @override
  Widget build(BuildContext context) {
    final uri = Uri.parse(url);

    /// Launches the URL in an external browser app.
    Future<void> handleLaunchExternalApplication() async {
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: .externalApplication);
      }
    }

    /// Launches the URL in an in-app browser view
    /// (Chrome Custom Tabs on Android, SFSafariViewController on iOS).
    /// Falls back to external browser if in-app browser is not supported.
    Future<void> handleLaunchInAppBrowserView() async {
      if (await canLaunchUrl(uri)) {
        final supportsInAppBrowser = await supportsLaunchMode(
          .inAppBrowserView,
        );
        final mode = supportsInAppBrowser
            ? LaunchMode.inAppBrowserView
            : LaunchMode.externalApplication;
        await launchUrl(uri, mode: mode);
      }
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
              onTap: handleLaunchExternalApplication,
            ),
            Button(
              label: 'in app browser view',
              onTap: handleLaunchInAppBrowserView,
            ),
          ],
        ),
      ),
    );
  }
}
