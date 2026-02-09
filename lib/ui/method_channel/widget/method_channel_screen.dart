import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen for learning method channel communication with native platforms.
class MethodChannelScreen extends StatelessWidget {
  const MethodChannelScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Method Channel')),
    child: Center(child: Text('Method Channel')),
  );
}
