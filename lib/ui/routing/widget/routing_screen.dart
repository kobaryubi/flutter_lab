import 'package:flutter/widgets.dart';
import 'package:flutter_lab/routing/router.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/button.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

class RoutingScreen extends StatelessWidget {
  const RoutingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBar: const AppBar(title: Text('routing')),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Button(
            label: 'cupertino',
            onTap: () {
              RoutingCupertinoRoute().push<void>(context);
            },
          ),
          Button(
            label: 'cupertino fullscreen dialog',
            onTap: () {
              RoutingCupertinoFullscreenDialogRoute().push<void>(context);
            },
          ),
          // webview遷移
          Button(
            label: 'webview遷移',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
