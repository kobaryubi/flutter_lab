import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/domain/entity/launch_url/launch_url_mode.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/button.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/launch_url/hook/use_launch_url.dart';

/// Screen that launches a URL with a specific [LaunchUrlMode].
class LaunchUrlDetailScreen extends HookWidget {
  const LaunchUrlDetailScreen({
    required this.url,
    required this.launchUrlMode,
    super.key,
  });

  final String url;
  final LaunchUrlMode launchUrlMode;

  @override
  Widget build(BuildContext context) {
    final launchUrlState = useLaunchUrl(url: url);

    final (label, onTap) = switch (launchUrlMode) {
      .externalApplication => (
        'external application',
        launchUrlState.launchExternalApplication,
      ),
      .inAppBrowserView => (
        'in app browser view',
        launchUrlState.launchInAppBrowserView,
      ),
    };

    return Layout(
      appBar: const AppBar(
        title: Text('launch url detail'),
      ),
      child: Center(
        child: Button(
          label: label,
          onTap: onTap,
        ),
      ),
    );
  }
}
