import 'package:flutter/widgets.dart';
import 'package:flutter_lab/routing/routes.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/home/widgets/launcher_row.dart';
import 'package:go_router/go_router.dart';

/// Debug-only screen that lists every lab route as a tile.
///
/// Reached by long-pressing the [AppBar] title when the app runs in the
/// `local` flavor. Each tile navigates via `context.go(path)` so routes
/// that require constructor parameters are skipped.
class DebugScreen extends StatelessWidget {
  const DebugScreen({super.key});

  static const _entries = <({String title, String path})>[
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
  Widget build(BuildContext context) => Layout(
    appBar: const AppBar(title: Text('Debug')),
    child: ListView.builder(
      itemCount: _entries.length,
      itemBuilder: _buildRow,
    ),
  );

  /// Builds a tile for the route at [index] that navigates on tap.
  Widget _buildRow(BuildContext context, int index) {
    final entry = _entries[index];

    /// Navigates to the selected lab route by path.
    void handleTap() {
      context.go(entry.path);
    }

    return LauncherRow(title: entry.title, onTap: handleTap);
  }
}
