import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/themes/theme.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen that demonstrates the `app_links` package.
///
/// - Step 1: shows the deep link that launched the app on a cold start
///   (`AppLinks.getInitialLink`). It is `null` when the app is opened normally.
/// - Step 2: shows links that arrive while the app is already running, by
///   listening to `AppLinks.uriLinkStream`.
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
    // A single AppLinks instance shared by the initial fetch and the stream.
    final appLinks = useMemoized(AppLinks.new);
    final initialLink = useState<Uri?>(null);
    final latestLink = useState<Uri?>(null);
    final latestLinkSource = useState<String?>(null);

    useEffect(() {
      StreamSubscription<Uri>? subscription;
      var isFirstEvent = true;

      /// Fetches the cold-start link, then subscribes to the live stream and
      /// classifies each event as a cold-start replay or a genuine live link.
      Future<void> listenToLinks() async {
        final initialUri = await appLinks.getInitialLink();
        initialLink.value = initialUri;

        /// Records an incoming link and whether it is the one-time replay of
        /// the cold-start link (only the first event can be the replay).
        void handleLink(Uri uri) {
          final isColdStartReplay = isFirstEvent && uri == initialUri;
          isFirstEvent = false;

          latestLink.value = uri;
          latestLinkSource.value =
              isColdStartReplay ? 'cold-start replay' : 'live';
        }

        subscription = appLinks.uriLinkStream.listen(handleLink);
      }

      listenToLinks();

      return () => subscription?.cancel();
    }, [appLinks]);

    return DefaultTextStyle(
      style: TextStyles.bodyMedium.copyWith(color: AppColors.black1),
      child: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('Initial link (cold start):'),

            const SizedBox(height: 8),

            Text(initialLink.value?.toString() ?? 'null'),

            const SizedBox(height: 24),

            const Text('Latest link (stream):'),

            const SizedBox(height: 8),

            Text(latestLink.value?.toString() ?? 'null'),

            const SizedBox(height: 8),

            Text('source: ${latestLinkSource.value ?? 'none'}'),
          ],
        ),
      ),
    );
  }
}
