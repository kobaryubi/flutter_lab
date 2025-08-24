import 'package:flutter/widgets.dart';
import 'package:flutter_lab/joke.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/ui/elevated_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RiverpodRandomJokeScreen extends HookConsumerWidget {
  const RiverpodRandomJokeScreen({super.key});

  void _onGetAnotherJokePressed(WidgetRef ref) {
    ref.invalidate(randomJokeProvider);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final randomJoke = ref.watch(randomJokeProvider);

    return Container(
      color: AppColors.white1,
      child: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            if (randomJoke.isRefreshing)
              const Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Text('Refreshing...'),
              ),
            switch (randomJoke) {
              AsyncValue(:final value?) => Text(
                '${value.setup}\n\n${value.punchline}',
                textAlign: TextAlign.center,
              ),
              AsyncValue(error: != null) => const Text('Error fetching joke'),
              AsyncValue() => const Text('Loading...'),
            },
            Positioned(
              bottom: 20,
              child: ElevatedButton(
                onPressed: () => _onGetAnotherJokePressed(ref),
                child: const Text('Get another joke'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
