import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'getting_started_screen.g.dart';

@riverpod
String helloWorld(Ref ref) {
  return 'Hello, World!';
}

class GettingStartedScreen extends HookConsumerWidget {
  const GettingStartedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = useState(0);

    final String value = ref.watch(helloWorldProvider);

    return Center(child: Text('$value ${counter.value}'));
  }
}
