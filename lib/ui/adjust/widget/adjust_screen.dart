import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

class AdjustScreen extends StatelessWidget {
  const AdjustScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBar: const AppBar(title: Text('adjust')),
      child: Column(children: [_Body()]),
    );
  }
}

class _Body extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
