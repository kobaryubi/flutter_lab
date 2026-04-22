import 'package:flutter/widgets.dart';
import 'package:flutter_lab/routing/routes.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/debug/view_model/debug_view_model.dart';
import 'package:flutter_lab/ui/home/widgets/launcher_row.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Debug-only screen that lists every lab route as a tile and shows the
/// current contents of local and secure storage.
///
/// Reached by long-pressing the AppBar title when the app runs in the
/// `local` flavor. Route tiles navigate via `context.go(path)` so routes
/// requiring constructor parameters are skipped.
class DebugScreen extends ConsumerWidget {
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
    final uiState = ref.watch(debugViewModelProvider);
    final viewModel = ref.read(debugViewModelProvider.notifier);

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
          if (uiState.localEntries case AsyncData(:final value))
            for (final entry in value.entries)
              _StorageRow(
                storageKey: entry.key,
                value: entry.value.toString(),
                onCopy: () =>
                    viewModel.copyValue(value: entry.value.toString()),
              ),
          const _SectionHeader('secure storage'),
          if (uiState.secureEntries case AsyncData(:final value))
            for (final entry in value.entries)
              _StorageRow(
                storageKey: entry.key,
                value: entry.value,
                onCopy: () => viewModel.copyValue(value: entry.value),
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
