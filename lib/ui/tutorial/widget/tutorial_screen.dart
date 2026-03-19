import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen demonstrating a tutorial overlay with spotlight animation.
class TutorialScreen extends StatelessWidget {
  const TutorialScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Tutorial')),
    child: _Body(),
  );
}

class _Body extends HookWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final spotlightController = useAnimationController(
      duration: const Duration(milliseconds: 2000),
    );
    final spotlightOpacity = useAnimation(
      CurvedAnimation(parent: spotlightController, curve: Curves.easeIn),
    );

    final contentController = useAnimationController(
      duration: const Duration(milliseconds: 2000),
    );
    final contentOpacity = useAnimation(
      CurvedAnimation(parent: contentController, curve: Curves.easeIn),
    );

    final isDismissed = useState(false);

    /// Starts the spotlight fade-in, then triggers content fade-in.
    useEffect(
      () {
        spotlightController.forward().then((_) {
          contentController.forward();
        });

        return null;
      },
      [],
    );

    /// Fades out both spotlight and content, then marks as dismissed.
    void handleDismiss() {
      Future.wait([
        spotlightController.reverse(),
        contentController.reverse(),
      ]).then((_) {
        isDismissed.value = true;
      });
    }

    return ColoredBox(
      color: const Color(0xFFFFFFFF),
      child: SizedBox.expand(
        child: Stack(
          children: [
            if (!isDismissed.value) ...[
              Positioned.fill(
                child: Opacity(
                  opacity: spotlightOpacity,
                  child: const _Spotlight(),
                ),
              ),

              Positioned(
                left: 0,
                right: 0,
                bottom: 120,
                child: Opacity(
                  opacity: contentOpacity,
                  child: _Content(onDismiss: handleDismiss),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

/// Placeholder for the spotlight overlay.
///
/// Renders a semi-transparent dark background with a circular cutout.
class _Spotlight extends StatelessWidget {
  const _Spotlight();

  @override
  Widget build(BuildContext context) => const ColoredBox(
    color: Color(0xCC2196F3),
  );
}

/// Placeholder for the tutorial content overlay.
///
/// Displays a text label and a dismiss button.
class _Content extends StatelessWidget {
  const _Content({required this.onDismiss});

  final VoidCallback onDismiss;

  @override
  Widget build(BuildContext context) => Column(
    children: [
      const Text(
        'Tutorial Content',
        style: TextStyle(
          color: Color(0xFFFFFFFF),
          fontSize: 20,
        ),
      ),

      const SizedBox(height: 24),

      GestureDetector(
        onTap: onDismiss,
        child: const DecoratedBox(
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Text(
              'Got it',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    ],
  );
}
