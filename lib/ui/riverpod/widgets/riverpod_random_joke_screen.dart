import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/ui/elevated_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RiverpodRandomJokeScreen extends HookConsumerWidget {
  const RiverpodRandomJokeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: AppColors.white1,
      child: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Text(
              'What kind of bagel can fly?\n\n'
              'A plain bagel.',
              textAlign: TextAlign.center,
            ),
            Positioned(
              bottom: 20,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Get another joke'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
