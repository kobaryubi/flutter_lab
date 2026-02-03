import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// Screen displayed within each branch of the shell demo.
///
/// Demonstrates [useAppLifecycleState]: it fires on app lifecycle
/// changes but not on branch switches.
class BranchScreen extends HookWidget {
  const BranchScreen({
    required this.title,
    super.key,
  });

  /// Display title for this branch.
  final String title;

  @override
  Widget build(BuildContext context) {
    final logs = useState<List<String>>([]);
    final appLifecycleState = useAppLifecycleState();

    /// Adds a timestamped log entry.
    void addLog(String message) {
      final timestamp = DateTime.now().toIso8601String().substring(11, 19);
      logs.value = [...logs.value, '[$timestamp] $message'];
    }

    // Track AppLifecycleState changes for comparison
    useEffect(() {
      if (appLifecycleState == null) return null;

      final emoji = switch (appLifecycleState) {
        .resumed => '🟢',
        .inactive => '🟡',
        .paused => '🔴',
        .detached => '⚫',
        .hidden => '🟤',
      };
      addLog('$emoji AppLifecycle: ${appLifecycleState.name}');

      return null;
    }, [appLifecycleState]);

    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(title),
        Text('App lifecycle: ${appLifecycleState?.name ?? "unknown"}'),
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
