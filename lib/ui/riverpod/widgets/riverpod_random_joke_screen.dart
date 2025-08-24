import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RiverpodRandomJokeScreen extends HookConsumerWidget {
  const RiverpodRandomJokeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox.expand(
      child: SafeArea(child: Text('riverpod random joke screen')),
    );
  }
}
