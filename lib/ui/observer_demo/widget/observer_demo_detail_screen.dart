import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Simple detail screen for the observer demo.
///
/// Navigating to and popping from this screen triggers `didPush` and
/// `didPop` observer callbacks that appear in the event log.
class ObserverDemoDetailScreen extends StatelessWidget {
  const ObserverDemoDetailScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Observer Detail')),
    child: Center(
      child: Text('Tap back to trigger didPop'),
    ),
  );
}
