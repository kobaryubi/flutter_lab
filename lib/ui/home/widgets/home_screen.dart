import 'package:flutter/widgets.dart';
import 'package:flutter_lab/routing/routes.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/home/widgets/launcher_row.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<AppLink> links = [
    AppLink(title: 'compass', route: Routes.compass),
    AppLink(title: 'optimistic state', route: Routes.optimisticState),
    // webview
    AppLink(
      title: 'webview',
      route: Routes.webview,
    ),
    // cookbook
    AppLink(
      title: 'networking fetch data',
      route: Routes.cookbookNetworkingFetchData,
    ),
    // riverpod
    AppLink(title: 'riverpod', route: Routes.riverpod),
    AppLink(
      title: 'riverpod getting started',
      route: Routes.riverpodGettingStarted,
    ),
    AppLink(title: 'riverpod random joke', route: Routes.riverpodRandomJoke),
    // animations
    AppLink(title: 'animations', route: Routes.animations),
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
                            context.go(link.route);
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
