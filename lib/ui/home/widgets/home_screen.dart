import 'package:flutter/widgets.dart';
import 'package:flutter_lab/routing/router.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/home/widgets/launcher_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static final _links = [
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
    AppLink(title: 'shell demo', route: ShellDemoTabARoute()),
    AppLink(title: 'local paths', route: LocalPathsRoute()),
    AppLink(title: 'local icon', route: LocalIconRoute()),
    AppLink(title: 'url navigation', route: UrlNavigationRoute()),
    AppLink(title: 'dio cache', route: DioCacheRoute()),
    AppLink(title: 'arutana ad', route: ArutanaAdRoute()),
    AppLink(title: 'push notification', route: PushNotificationRoute()),
    AppLink(title: 'app store', route: AppStoreRoute()),
    AppLink(title: 'network', route: NetworkRoute()),
    AppLink(title: 'brightness', route: BrightnessRoute()),
    AppLink(title: 'in-app review', route: InAppReviewRoute()),
    AppLink(title: 'OCR', route: OcrRoute()),
    AppLink(title: 'loading', route: LoadingRoute()),
    AppLink(
      title: 'screenshot prevention',
      route: ScreenshotPreventionRoute(),
    ),
    AppLink(title: 'form builder', route: FormBuilderRoute()),
    AppLink(title: 'MAX SDK', route: MaxSdkRoute()),
    AppLink(title: 'permission', route: PermissionRoute()),
    AppLink(title: 'pop scope', route: PopScopeRoute()),
    AppLink(title: 'auto_mappr demo', route: AutoMapprDemoRoute()),
    AppLink(
      title: 'useEffect vs ref.listen',
      route: EffectVsListenRoute(),
    ),
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
