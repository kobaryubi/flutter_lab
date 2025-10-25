import 'package:flutter/widgets.dart';
import 'package:flutter_lab/routing/router.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/home/widgets/launcher_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static final List<AppLink> links = [
    AppLink(
      title: 'compass',
      route: WorkoutListRoute(),
      //  route: Routes.compass
    ),
    AppLink(
      title: 'optimistic state',
      route: WorkoutListRoute(),
      // route: Routes.optimisticState
    ),
    // webview
    AppLink(
      title: 'webview',
      route: WorkoutListRoute(),
      // route: Routes.webview,
    ),
    // petstore
    AppLink(
      title: 'petstore',
      route: WorkoutListRoute(),
      // route: Routes.petstore),
    ),
    // cookbook
    AppLink(
      title: 'networking fetch data',
      route: WorkoutListRoute(),
      // route: Routes.cookbookNetworkingFetchData,
    ),
    // riverpod
    AppLink(
      title: 'riverpod',
      route: WorkoutListRoute(),
      // route: Routes.riverpod
    ),
    AppLink(
      title: 'riverpod getting started',
      route: WorkoutListRoute(),
      // route: Routes.riverpodGettingStarted,
    ),
    AppLink(
      title: 'riverpod random joke',
      route: WorkoutListRoute(),
      // route: Routes.riverpodRandomJoke
    ),
    // animations
    AppLink(
      title: 'animations',
      route: WorkoutListRoute(),
      // route: Routes.animations
    ),
    // not found
    AppLink(
      title: 'not found',
      route: WorkoutListRoute(),
      // route: '/dummy-route'
    ),
    // fitness-tracker
    AppLink(
      title: 'fitness tracker',
      route: WorkoutListRoute(),
      // route: Routes.fitnessTrackerWorkoutList,
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
                            link.route.go(context);
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
