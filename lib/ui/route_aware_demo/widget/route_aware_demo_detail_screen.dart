import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Simple detail screen for the route-aware demo.
///
/// Navigating to and popping from this screen triggers `didPushNext`
/// and `didPopNext` hook callbacks on the parent screen.
class RouteAwareDemoDetailScreen extends StatelessWidget {
  const RouteAwareDemoDetailScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Route Aware Detail')),
    child: Center(
      child: Text('Tap back to trigger didPopNext'),
    ),
  );
}
