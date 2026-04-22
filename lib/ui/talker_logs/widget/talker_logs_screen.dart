import 'package:flutter/widgets.dart';
import 'package:flutter_lab/application/di/provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:talker_flutter/talker_flutter.dart';

/// Built-in Talker log viewer wrapped so it reads the shared Talker
/// instance from Riverpod.
class TalkerLogsScreen extends ConsumerWidget {
  const TalkerLogsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final talker = ref.watch(talkerProvider);

    return TalkerScreen(talker: talker);
  }
}
