import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen that demonstrates how to prevent double navigation when two
/// navigation buttons are tapped simultaneously with multi-touch.
class MultiTapGuardScreen extends StatelessWidget {
  const MultiTapGuardScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Multi Tap Guard')),
    child: Text('Multi tap guard sample'),
  );
}
