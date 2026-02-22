import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/button.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/launch_url/hook/use_launch_url.dart';

class LaunchUrlScreen extends HookWidget {
  const LaunchUrlScreen({required this.url, super.key});

  final String url;

  @override
  Widget build(BuildContext context) {
    final launchUrlState = useLaunchUrl(url: url);

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
              onTap: launchUrlState.launchExternalApplication,
            ),
            Button(
              label: 'in app browser view',
              onTap: launchUrlState.launchInAppBrowserView,
            ),
          ],
        ),
      ),
    );
  }
}
