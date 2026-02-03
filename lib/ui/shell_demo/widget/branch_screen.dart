import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/presentation/core/hook/use_branch_lifecycle.dart';

/// Screen displayed within each branch of the shell demo.
///
/// Demonstrates the difference between [useBranchLifecycle] and
/// [useAppLifecycleState]: the custom hook fires on branch switches
/// while [AppLifecycleState] does not.
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

    /// Handles branch becoming active.
    void handleBecameActive() {
      addLog('🟢 Branch became active');
    }

    /// Handles branch becoming inactive.
    void handleBecameInactive() {
      addLog('🔴 Branch became inactive');
    }

    final branchState = useBranchLifecycle(
      onBecameActive: handleBecameActive,
      onBecameInactive: handleBecameInactive,
    );

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
        Text('Branch state: ${branchState.name}'),
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
