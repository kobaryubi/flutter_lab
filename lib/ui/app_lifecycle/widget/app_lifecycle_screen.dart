import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen for testing app lifecycle hooks.
class AppLifecycleScreen extends StatelessWidget {
  const AppLifecycleScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('App Lifecycle Hooks')),
    child: _Body(),
  );
}

class _Body extends HookWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final lifecycleState = useAppLifecycleState();
    final logs = useState<List<String>>([]);

    /// Adds a log entry with timestamp.
    void addLog(String message) {
      final timestamp = DateTime.now().toIso8601String().substring(11, 19);
      logs.value = [...logs.value, '[$timestamp] $message'];
    }

    // React to lifecycle state changes
    useEffect(() {
      if (lifecycleState == null) return null;

      final stateName = lifecycleState.name;
      final emoji = switch (lifecycleState) {
        AppLifecycleState.resumed => '🟢',
        AppLifecycleState.inactive => '🟡',
        AppLifecycleState.paused => '🔴',
        AppLifecycleState.detached => '⚫',
        AppLifecycleState.hidden => '🟤',
      };
      addLog('$emoji $stateName');

      return null;
    }, [lifecycleState]);

    return Column(
      children: [
        Text('Current State: ${lifecycleState?.name ?? 'unknown'}'),
        const Text('Event Log:'),
        Expanded(
          child: ListView.builder(
            itemCount: logs.value.length,
            itemBuilder: (context, index) {
              final reversedIndex = logs.value.length - 1 - index;
              return Text(logs.value[reversedIndex]);
            },
          ),
        ),
      ],
    );
  }
}
