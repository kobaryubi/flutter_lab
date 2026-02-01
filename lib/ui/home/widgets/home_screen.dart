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
    AppLink(title: 'camera', route: CameraRoute()),
    AppLink(title: 'overlay example', route: PortalRoute()),
    AppLink(title: 'error handling', route: ErrorHandlingRoute()),
    AppLink(title: 'shared preferences', route: SharedPreferencesRoute()),
    AppLink(title: 'S3 ETag cache', route: S3EtagCacheRoute()),
    AppLink(title: 'app lifecycle hooks', route: AppLifecycleRoute()),
    AppLink(title: 'web view', route: WebViewRoute()),
    AppLink(title: 'shell demo', route: ShellDemoTabARoute()),
    AppLink(title: 'local paths', route: LocalPathsRoute()),
    AppLink(title: 'local icon', route: LocalIconRoute()),
    AppLink(title: 'url navigation', route: UrlNavigationRoute()),
    AppLink(title: 'dio cache', route: DioCacheRoute()),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
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
}
