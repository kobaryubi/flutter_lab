import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

class RoutingCupertinoFullscreenDialogScreen extends StatelessWidget {
  const RoutingCupertinoFullscreenDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layout(
      appBar: AppBar(
        title: Text('routing cupertino fullscreen dialog'),
      ),
      child: Placeholder(),
    );
  }
}
