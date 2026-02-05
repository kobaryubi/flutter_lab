import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/screenshot_prevention/hook/use_screenshot_prevention.dart';

/// Screen to test screenshot prevention using screen_protector package.
class ScreenshotPreventionScreen extends HookWidget {
  const ScreenshotPreventionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    useScreenshotPrevention();

    return const Layout(
      appBar: AppBar(title: Text('Screenshot Prevention')),
      child: Center(
        child: Text('Screenshot prevention is enabled'),
      ),
    );
  }
}
