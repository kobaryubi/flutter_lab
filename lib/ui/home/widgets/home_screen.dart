import 'package:flutter/widgets.dart';
import 'package:flutter_lab/routing/router.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/home/widgets/launcher_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static final List<AppLink> links = [
    // not found
    AppLink(
      title: 'not found',
      route: NotFoundRoute(),
    ),
    // routing
    AppLink(
      title: 'routing',
      route: RoutingRoute(),
    ),
    // launch url
    const AppLink(
      title: 'launch url',
      route: LaunchUrlRoute(
        url: 'https://flutter.dev',
      ),
    ),

    // camera
    AppLink(
      title: 'camera',
      route: CameraRoute(),
    ),

    // overlay example
    AppLink(
      title: 'overlay example',
      route: PortalRoute(),
    ),

    // error handling
    AppLink(
      title: 'error handling',
      route: ErrorHandlingRoute(),
    ),

    // shared preferences
    AppLink(
      title: 'shared preferences',
      route: SharedPreferencesRoute(),
    ),

    // S3 ETag cache
    AppLink(
      title: 'S3 ETag cache',
      route: S3EtagCacheRoute(),
    ),

    // app lifecycle hooks
    AppLink(
      title: 'app lifecycle hooks',
      route: AppLifecycleRoute(),
    ),

    // web view hook
    AppLink(
      title: 'web view hook',
      route: WebViewHookRoute(),
    ),
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
                      itemCount: links.length,
                      separatorBuilder: (_, _) => const SizedBox(
                        height: 1,
                        child: ColoredBox(color: AppColors.gray1),
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        final link = links[index];
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
