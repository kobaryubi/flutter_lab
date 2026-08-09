import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen used as the target of the E2E counter journey.
class E2eCounterScreen extends StatelessWidget {
  const E2eCounterScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('E2E Counter')),
    child: _Body(),
  );
}

class _Body extends HookWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final count = useState(0);

    return Text(
      '${count.value}',
      key: const Key('e2e_counter_count_text'),
    );
  }
}
