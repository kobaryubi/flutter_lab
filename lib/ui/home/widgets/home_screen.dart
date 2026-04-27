import 'package:flutter/widgets.dart';
import 'package:flutter_lab/routing/router.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/home/widgets/launcher_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static final _links = [
    AppLink(title: 'arutana', route: ArutanaRoute()),
    AppLink(title: 'MAX rewarded ads', route: MaxRoute()),
    AppLink(title: 'Adfurikun ads', route: AdfurikunRoute()),
    AppLink(title: 'not found', route: NotFoundRoute()),
    AppLink(title: 'routing', route: RoutingRoute()),
    const AppLink(
      title: 'launch url',
      route: LaunchUrlRoute(url: 'https://flutter.dev'),
    ),
    AppLink(title: 'overlay example', route: PortalRoute()),
    AppLink(title: 'shared preferences', route: SharedPreferencesRoute()),
    AppLink(title: 'S3 ETag cache', route: S3EtagCacheRoute()),
    AppLink(title: 'app lifecycle hooks', route: AppLifecycleRoute()),
    const AppLink(
      title: 'web view',
      route: WebViewRoute(url: 'https://flutter.dev'),
    ),
    AppLink(title: 'local paths', route: LocalPathsRoute()),
    AppLink(title: 'local icon', route: LocalIconRoute()),
    AppLink(title: 'url navigation', route: UrlNavigationRoute()),
    AppLink(title: 'dio cache', route: DioCacheRoute()),
    AppLink(title: 'push notification', route: PushNotificationRoute()),
    AppLink(title: 'app store', route: AppStoreRoute()),
    AppLink(title: 'network', route: NetworkRoute()),
    AppLink(title: 'brightness', route: BrightnessRoute()),
    AppLink(title: 'in-app review', route: InAppReviewRoute()),
    AppLink(title: 'OCR', route: OcrRoute()),
    AppLink(title: 'loading', route: LoadingRoute()),
    AppLink(title: 'loading + submit', route: LoadingSubmitRoute()),
    AppLink(
      title: 'screenshot prevention',
      route: ScreenshotPreventionRoute(),
    ),
    AppLink(title: 'form builder', route: FormBuilderRoute()),
    AppLink(title: 'permission', route: PermissionRoute()),
    AppLink(title: 'pop scope', route: PopScopeRoute()),
    AppLink(title: 'auto_mappr demo', route: AutoMapprDemoRoute()),
    AppLink(
      title: 'useEffect vs ref.listen',
      route: EffectVsListenRoute(),
    ),
    AppLink(title: 'method channel', route: MethodChannelRoute()),
    AppLink(title: 'navigation', route: NavigationScreenARoute()),
    AppLink(title: 'device info', route: DeviceInfoRoute()),
    AppLink(title: 'clock', route: ClockRoute()),
    AppLink(title: 'counter', route: CounterRoute()),
    AppLink(title: 'async state race', route: AsyncStateRaceRoute()),
    AppLink(title: 'ETag cache', route: EtagCacheRoute()),
    AppLink(title: 'Google API', route: GoogleApiRoute()),
    AppLink(title: 'pigeon', route: PigeonRoute()),
    AppLink(title: 'dialog state', route: DialogStateRoute()),
    AppLink(title: 'observer demo', route: ObserverDemoRoute()),
    AppLink(title: 'route aware demo', route: RouteAwareDemoRoute()),
    AppLink(title: 'horizontal layout', route: HorizontalLayoutRoute()),
    AppLink(title: 'ProfilePassport', route: ProfilePassportRoute()),
    AppLink(title: 'animated switcher', route: AnimatedSwitcherRoute()),
    AppLink(title: 'shell demo', route: ShellDemoTab1Route()),
    AppLink(title: 'analytics', route: AnalyticsRoute()),
    AppLink(
      title: 'firebase performance',
      route: FirebasePerformanceRoute(),
    ),
    AppLink(title: 'crashlytics', route: CrashlyticsRoute()),
    AppLink(title: 'tutorial', route: TutorialRoute()),
    AppLink(title: 'scroll to section', route: ScrollToSectionRoute()),
    AppLink(
      title: 'visibility detector',
      route: VisibilityDetectorRoute(),
    ),
    AppLink(
      title: 'stream & subscription',
      route: StreamSubscriptionRoute(),
    ),
    const AppLink(
      title: 'web view tabs',
      route: WebViewTabsRoute(),
    ),
    AppLink(
      title: 'web view javascript',
      route: WebViewJavascriptRoute(),
    ),
    const AppLink(
      title: 'Adjust deferred deep link',
      route: AdjustDeferredDeeplinkRoute(),
    ),
    AppLink(title: 'error handling', route: ErrorHandlingRoute()),
    AppLink(title: 'tar download', route: TarDownloadRoute()),
  ];

  @override
  Widget build(BuildContext context) => Container(
    decoration: const BoxDecoration(color: AppColors.white1),
    child: Stack(
      children: [
        Column(
          children: [
            const AppBar(title: Text('Home')),
            Expanded(
              child: SafeArea(
                top: false,
                bottom: false,
                child: SizedBox(
                  width: double.infinity,
                  child: ListView.separated(
                    itemCount: _links.length,
                    separatorBuilder: (_, _) => const SizedBox(
                      height: 1,
                      child: ColoredBox(color: AppColors.gray1),
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      final link = _links[index];
                      return LauncherRow(
                        title: link.title,
                        onTap: () {
                          link.route.push<void>(context);
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
