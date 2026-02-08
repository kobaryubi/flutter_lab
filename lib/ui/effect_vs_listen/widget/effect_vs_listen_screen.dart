import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/effect_vs_listen/view_model/effect_vs_listen_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen demonstrating the difference between useEffect and ref.listen.
class EffectVsListenScreen extends StatelessWidget {
  const EffectVsListenScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('useEffect vs ref.listen')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(effectVsListenViewModelProvider.notifier);
    final uiState = ref.watch(effectVsListenViewModelProvider);

    final localCount = useState(0);
    final logs = useState(<String>[]);

    // useEffect: runs on initial mount AND when keys change
    useEffect(() {
      final current = localCount.value;
      logs.value = [...logs.value, 'useEffect: localCount = $current'];
      return () {
        // Cleanup runs before next effect or on unmount
        logs.value = [
          ...logs.value,
          'useEffect cleanup: localCount was $current',
        ];
      };
    }, [localCount.value]);

    // ref.listen: runs ONLY when provider state changes (NOT on initial)
    ref.listen(effectVsListenViewModelProvider, (previous, next) {
      logs.value = [
        ...logs.value,
        'ref.listen: count ${previous?.count} → ${next.count}',
      ];
    });

    /// Handles tapping the local +1 button.
    void handleLocalIncrement() {
      localCount.value++;
    }

    /// Handles tapping the provider +1 button.
    void handleProviderIncrement() {
      viewModel.increment();
    }

    /// Handles tapping the clear logs button.
    void handleClearLogs() {
      logs.value = [];
    }

    return Column(
      crossAxisAlignment: .stretch,
      children: [
        Row(
          children: [
            Expanded(child: Text('Local: ${localCount.value}')),
            GestureDetector(
              behavior: .opaque,
              onTap: handleLocalIncrement,
              child: const Text('[+1]'),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(child: Text('Provider: ${uiState.count}')),
            GestureDetector(
              behavior: .opaque,
              onTap: handleProviderIncrement,
              child: const Text('[+1]'),
            ),
          ],
        ),
        GestureDetector(
          behavior: .opaque,
          onTap: handleClearLogs,
          child: const Text('[Clear Logs]'),
        ),
        const Text('--- Logs ---'),
        Expanded(
          child: ListView(
            children: logs.value.map(Text.new).toList(),
          ),
        ),
      ],
    );
  }
}
