import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/data/secure_storage/secure_storage_keys.dart';
import 'package:flutter_lab/data/shared_preferences/shared_preferences_keys.dart';
import 'package:flutter_lab/presentation/core/provider/global_snackbar_notifier.dart';
import 'package:flutter_lab/routing/routes.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/home/widgets/launcher_row.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Debug-only screen that lists every lab route as a tile and shows the
/// current contents of local and secure storage.
///
/// Reached by long-pressing the AppBar title when the app runs in the
/// `local` flavor. Each route tile navigates via `context.go(path)` so
/// routes requiring constructor parameters are skipped.
class DebugScreen extends HookConsumerWidget {
  const DebugScreen({super.key});

  static const _routes = <({String title, String path})>[
    (title: 'home', path: Routes.home),
    (title: 'login', path: Routes.login),
    (title: 'not found', path: Routes.notFound),
    (title: 'web view', path: Routes.webView),
    (title: 'launch url', path: Routes.launchUrl),
    (title: 'launch url detail', path: Routes.launchUrlDetail),
    (title: 'portal', path: Routes.portal),
    (title: 'shared preferences', path: Routes.sharedPreferences),
    (title: 's3 etag cache', path: Routes.s3EtagCache),
    (title: 'app lifecycle', path: Routes.appLifecycle),
    (title: 'local paths', path: Routes.localPaths),
    (title: 'local icon', path: Routes.localIcon),
    (title: 'url navigation', path: Routes.urlNavigation),
    (title: 'dio cache', path: Routes.dioCache),
    (title: 'etag cache', path: Routes.etagCache),
    (title: 'push notification', path: Routes.pushNotification),
    (title: 'app store', path: Routes.appStore),
    (title: 'network', path: Routes.network),
    (title: 'brightness', path: Routes.brightness),
    (title: 'in-app review', path: Routes.inAppReview),
    (title: 'screenshot prevention', path: Routes.screenshotPrevention),
    (title: 'ocr', path: Routes.ocr),
    (title: 'ocr result', path: Routes.ocrResult),
    (title: 'loading', path: Routes.loading),
    (title: 'form builder', path: Routes.formBuilder),
    (title: 'permission', path: Routes.permission),
    (title: 'pop scope', path: Routes.popScope),
    (title: 'auto_mappr demo', path: Routes.autoMapprDemo),
    (title: 'effect vs listen', path: Routes.effectVsListen),
    (title: 'method channel', path: Routes.methodChannel),
    (title: 'async state race', path: Routes.asyncStateRace),
    (title: 'google api', path: Routes.googleApi),
    (title: 'pigeon', path: Routes.pigeon),
    (title: 'dialog state', path: Routes.dialogState),
    (title: 'observer demo', path: Routes.observerDemo),
    (title: 'observer demo detail', path: Routes.observerDemoDetail),
    (title: 'route aware demo', path: Routes.routeAwareDemo),
    (title: 'route aware demo detail', path: Routes.routeAwareDemoDetail),
    (title: 'navigation screen a', path: Routes.navigationScreenA),
    (title: 'navigation screen b', path: Routes.navigationScreenB),
    (title: 'navigation screen c', path: Routes.navigationScreenC),
    (title: 'clock', path: Routes.clock),
    (title: 'counter', path: Routes.counter),
    (title: 'device info', path: Routes.deviceInfo),
    (title: 'horizontal layout', path: Routes.horizontalLayout),
    (title: 'routing', path: Routes.routing),
    (title: 'routing cupertino', path: Routes.routingCupertino),
    (
      title: 'routing cupertino fullscreen dialog',
      path: Routes.routingCupertinoFullscreenDialog,
    ),
    (title: 'pet cache', path: Routes.petCache),
    (title: 'arutana', path: Routes.arutana),
    (title: 'max', path: Routes.max),
    (title: 'adfurikun', path: Routes.adfurikun),
    (title: 'profile passport', path: Routes.profilePassport),
    (title: 'animated switcher', path: Routes.animatedSwitcher),
    (title: 'analytics', path: Routes.analytics),
    (title: 'crashlytics', path: Routes.crashlytics),
    (title: 'firebase performance', path: Routes.firebasePerformance),
    (title: 'shell demo', path: Routes.shellDemo),
    (title: 'shell demo tab 1', path: Routes.shellDemoTab1),
    (title: 'shell demo tab 2', path: Routes.shellDemoTab2),
    (title: 'shell demo detail', path: Routes.shellDemoDetail),
    (title: 'shell demo sub', path: Routes.shellDemoSub),
    (title: 'tutorial', path: Routes.tutorial),
    (title: 'scroll to section', path: Routes.scrollToSection),
    (title: 'visibility detector', path: Routes.visibilityDetector),
    (title: 'stream subscription', path: Routes.streamSubscription),
    (title: 'web view tabs', path: Routes.webViewTabs),
    (title: 'web view javascript', path: Routes.webViewJavascript),
    (title: 'adjust deferred deeplink', path: Routes.adjustDeferredDeeplink),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reloadCounter = useState(0);

    final localFuture = useMemoized(() async {
      final service = ref.read(sharedPreferencesServiceProvider);
      final raw = await service.getAll(keys: SharedPreferencesKeys.all);

      return <String, Object>{
        for (final entry in raw.entries)
          if (entry.value != null) entry.key: entry.value!,
      };
    }, [reloadCounter.value]);

    final secureFuture = useMemoized(() {
      final service = ref.read(secureStorageServiceProvider);

      return service.getAll(keys: SecureStorageKeys.all);
    }, [reloadCounter.value]);

    final localSnapshot = useFuture(localFuture);
    final secureSnapshot = useFuture(secureFuture);

    /// Copies [value] to the clipboard and posts a snackbar.
    Future<void> handleCopy(String value) async {
      await Clipboard.setData(ClipboardData(text: value));

      ref.read(globalSnackbarProvider.notifier).show(text: 'copied');
    }

    return Layout(
      appBar: const AppBar(title: Text('Debug')),
      child: ListView(
        children: [
          const _SectionHeader('routes'),
          for (final entry in _routes)
            LauncherRow(
              title: entry.title,
              onTap: () => context.go(entry.path),
            ),
          const _SectionHeader('local storage'),
          if (localSnapshot.data case final entries?)
            for (final entry in entries.entries)
              _StorageRow(
                storageKey: entry.key,
                value: entry.value.toString(),
                onCopy: () => handleCopy(entry.value.toString()),
              ),
          const _SectionHeader('secure storage'),
          if (secureSnapshot.data case final entries?)
            for (final entry in entries.entries)
              _StorageRow(
                storageKey: entry.key,
                value: entry.value,
                onCopy: () => handleCopy(entry.value),
              ),
        ],
      ),
    );
  }
}

/// Section title rendered inline in the debug list.
class _SectionHeader extends StatelessWidget {
  const _SectionHeader(this.title);

  final String title;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    child: Text(title),
  );
}

/// A row showing a storage entry with a tap-to-copy action.
class _StorageRow extends StatelessWidget {
  const _StorageRow({
    required this.storageKey,
    required this.value,
    required this.onCopy,
  });

  final String storageKey;
  final String value;
  final VoidCallback onCopy;

  @override
  Widget build(BuildContext context) => GestureDetector(
    behavior: HitTestBehavior.opaque,
    onTap: onCopy,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 4,
        children: [Text(storageKey), Text(value)],
      ),
    ),
  );
}
