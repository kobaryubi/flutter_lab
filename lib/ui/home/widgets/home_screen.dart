import 'package:flutter/widgets.dart';
import 'package:flutter_lab/routing/routes.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/home/home_view_model.dart';
import 'package:flutter_lab/ui/home/widgets/launcher_row.dart';
import 'package:go_router/go_router.dart';

/// Home screen widget for the application.
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.viewModel});

  final HomeViewModel viewModel;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const List<AppLink> links = [
    AppLink(title: 'compass', route: Routes.compass),
    AppLink(title: 'optimistic state', route: Routes.optimisticState),
    // riverpod
    AppLink(title: 'riverpod', route: Routes.riverpod),
    AppLink(
      title: 'riverpod getting started',
      route: Routes.riverpodGettingStarted,
    ),
    AppLink(title: 'riverpod random joke', route: Routes.riverpodRandomJoke),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: AppColors.white1),
      child: Stack(
        children: [
          Column(
            children: [
              AppBar(),
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
