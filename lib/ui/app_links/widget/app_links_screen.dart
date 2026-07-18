import 'package:app_links/app_links.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/themes/theme.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen that demonstrates the `app_links` package.
///
/// Step 1: shows the deep link that launched the app on a cold start
/// (`AppLinks.getInitialLink`). It is `null` when the app is opened normally.
class AppLinksScreen extends StatelessWidget {
  const AppLinksScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('app_links')),
    child: _Body(),
  );
}

class _Body extends HookWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final initialLink = useState<Uri?>(null);

    useEffect(() {
      final appLinks = AppLinks();

      // Fetch the link that launched the app (cold start), if any.
      appLinks.getInitialLink().then((uri) {
        initialLink.value = uri;
      });

      return null;
    }, const []);

    return DefaultTextStyle(
      style: TextStyles.bodyMedium.copyWith(color: AppColors.black1),
      child: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('Initial link (cold start):'),

            const SizedBox(height: 8),

            Text(initialLink.value?.toString() ?? 'null'),
          ],
        ),
      ),
    );
  }
}
