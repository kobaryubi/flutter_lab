import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RiverpodRandomJokeScreen extends HookConsumerWidget {
  const RiverpodRandomJokeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: AppColors.white1,
      child: SafeArea(child: Text('riverpod random joke screen')),
    );
  }
}
