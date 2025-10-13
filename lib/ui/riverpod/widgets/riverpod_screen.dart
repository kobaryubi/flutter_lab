import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'riverpod_screen.g.dart';

@riverpod
String helloWorld(Ref ref) {
  return 'Hello, World!';
}

class RiverpodScreen extends HookConsumerWidget {
  const RiverpodScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = useState(0);

    final value = ref.watch(helloWorldProvider);

    return Center(child: Text('$value ${counter.value}'));
  }
}
