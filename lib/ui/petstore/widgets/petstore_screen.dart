import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/scaffold.dart';

class PetStoreScreen extends HookWidget {
  const PetStoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBar(title: Text('PetStore')),
      body: _Body(),
    );
  }
}

class _Body extends HookWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('PetStore Screen - to be implemented'),
    );
  }
}

@Preview(name: 'PetStoreScreen')
Widget preview() => const _Body();
