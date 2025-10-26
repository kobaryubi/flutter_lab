part of '../router.dart';

@TypedStatefulShellRoute<ShellRouteData>(
  branches: [
    TypedStatefulShellBranch<BranchWorkoutListData>(
      routes: [
        TypedGoRoute<WorkoutListRoute>(path: Routes.fitnessTrackerWorkoutList),
      ],
    ),
    TypedStatefulShellBranch<BranchChatData>(
      routes: [TypedGoRoute<ChatRoute>(path: Routes.fitnessTrackerChat)],
    ),
    TypedStatefulShellBranch<BranchProfileData>(
      routes: [TypedGoRoute<ProfileRoute>(path: Routes.fitnessTrackerProfile)],
    ),
  ],
)
class ShellRouteData extends StatefulShellRouteData {
  const ShellRouteData();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return Layout(
      appBar: AppBar(
        title: Text(
          fitnessTrackerNavTitles[navigationShell.currentIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        navigationShell: navigationShell,
      ),
      child: navigationShell,
    );
  }
}
