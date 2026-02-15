import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/clock/view_model/clock_view_model.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen that demonstrates the clock package with periodic time updates.
class ClockScreen extends StatelessWidget {
  const ClockScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Clock')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(clockViewModelProvider);

    useEffect(() {
      final timer = Timer.periodic(
        const Duration(seconds: 1),
        (_) => ref.read(clockViewModelProvider.notifier).updateCurrentTime(),
      );
      return timer.cancel;
    }, const []);

    /// Formats a [Duration] as HH:mm:ss.
    String formatDuration(Duration duration) {
      final hours = duration.inHours.toString().padLeft(2, '0');
      final minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
      final seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
      return '$hours:$minutes:$seconds';
    }

    /// Formats a [DateTime] as HH:mm:ss.
    String formatTime(DateTime dateTime) {
      final hours = dateTime.hour.toString().padLeft(2, '0');
      final minutes = dateTime.minute.toString().padLeft(2, '0');
      final seconds = dateTime.second.toString().padLeft(2, '0');
      return '$hours:$minutes:$seconds';
    }

    return Column(
      crossAxisAlignment: .start,
      children: [
        Text('Current Time: ${formatTime(uiState.currentTime)}'),
        Text('Elapsed: ${formatDuration(uiState.elapsedDuration)}'),
      ],
    );
  }
}
