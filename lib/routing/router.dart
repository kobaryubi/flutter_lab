import 'package:flutter/widgets.dart';
import 'package:flutter_lab/data/repositories/auth/auth_repository.dart';
import 'package:flutter_lab/routing/fitness_tracker/branch_chat_data.dart';
import 'package:flutter_lab/routing/fitness_tracker/branch_profile_data.dart';
import 'package:flutter_lab/routing/fitness_tracker/branch_workout_list_data.dart';
import 'package:flutter_lab/routing/routes.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/fitness_tracker/widgets/workout_list_screen.dart';
import 'package:flutter_lab/ui/home/widgets/home_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fitness_tracker/shell_route_data.dart';
part 'fitness_tracker/workout_list_route.dart';
part 'home_route.dart';
part 'router.g.dart';

@riverpod
GoRouter router(Ref ref) {
  return GoRouter(
    initialLocation: Routes.home,
    onException: (context, state, router) {
      router.go(Routes.notFound);
    },
    debugLogDiagnostics: true,
    redirect: _redirect,
    routes: $appRoutes,
    // [
    //   GoRoute(
    //     path: Routes.login,
    //     builder: (context, state) {
    //       return LoginScreen(
    //         viewModel: LoginViewModel(authRepository: context.read()),
    //       );
    //     },
    //   ),
    //   GoRoute(
    //     routes: [
    //       // /results
    //       GoRoute(
    //         path: Routes.resultsRelative,
    //         builder: (context, state) {
    //           final viewModel = ResultsViewModel(
    //             destinationRepository: context.read(),
    //             itineraryConfigRepository: context.read(),
    //           );
    //           return ResultsScreen(viewModel: viewModel);
    //         },
    //       ),
    //       // /activities
    //       GoRoute(
    //         path: Routes.activitiesRelative,
    //         builder: (context, state) {
    //           final viewModel = ActivitiesViewModel(
    //             activityRepository: context.read(),
    //             itineraryConfigRepository: context.read(),
    //           );
    //           return ActivitiesScreen(viewModel: viewModel);
    //         },
    //       ),
    //       //             final viewModel = BookingViewModel(
    //       //               itineraryConfigRepository: context.read(),
    //       //               createBookingUseCase: context.read(),
    //       //               shareBookingUseCase: context.read(),
    //       //             );

    //       //             // When opening the booking screen directly
    //       //             // create a new booking from the stored ItineraryConfig.
    //       //             viewModel.createBooking.execute();

    //       //                 final viewModel = BookingViewModel(
    //       //                   itineraryConfigRepository: context.read(),
    //       //                   createBookingUseCase: context.read(),
    //       //                   shareBookingUseCase: context.read(),
    //       //                 );

    //       // /webview
    //       GoRoute(
    //         path: Routes.webviewRelative,
    //         builder: (context, state) {
    //           return const WebViewScreen();
    //         },
    //       ),
    //       // /petstore
    //       GoRoute(
    //         path: Routes.petstoreRelative,
    //         builder: (context, state) {
    //           return const PetStoreScreen();
    //         },
    //       ),
    //       // compass
    //       GoRoute(
    //         path: Routes.compassRelative,
    //         builder: (context, state) {
    //           final viewModel = CompassViewModel(
    //             bookingRepository: context.read(),
    //             userRepository: context.read(),
    //           );
    //           return CompassScreen(viewModel: viewModel);
    //         },
    //         routes: [
    //           GoRoute(
    //             path: Routes.searchRelative,
    //             builder: (context, state) {
    //               final viewModel = CompassSearchFormViewModel(
    //                 continentRepository: context.read(),
    //                 itineraryConfigRepository: context.read(),
    //               );
    //               return CompassSearchFormScreen(viewModel: viewModel);
    //             },
    //           ),
    //           GoRoute(
    //             path: Routes.bookingRelative,
    //             builder: (context, state) {
    //               final viewModel = CompassBookingViewModel(
    //                 bookingRepository: context.read(),
    //                 shareBookingUseCase: context.read(),
    //               );

    //               return CompassBookingScreen(viewModel: viewModel);
    //             },
    //             routes: [
    //               GoRoute(
    //                 path: ':id',
    //                 builder: (context, state) {
    //                   final viewModel = CompassBookingViewModel(
    //                     bookingRepository: context.read(),
    //                     shareBookingUseCase: context.read(),
    //                   );

    //                   final id = int.parse(state.pathParameters['id']!);
    //                   viewModel.loadBooking.execute(id);

    //                   return CompassBookingScreen(viewModel: viewModel);
    //                 },
    //               ),
    //             ],
    //           ),
    //         ],
    //       ),
    //       GoRoute(
    //         path: Routes.optimisticStateRelative,
    //         builder: (context, state) {
    //           final viewModel = OptimisticStateViewModel(
    //             subscriptionRepository: context.read(),
    //           );
    //           return OptimisticStateScreen(viewModel: viewModel);
    //         },
    //       ),
    //     ],
    //   ),
    //   // cookbook
    //   GoRoute(
    //     path: Routes.cookbook,
    //     builder: (context, state) => const Placeholder(),
    //     routes: [
    //       GoRoute(
    //         path: Routes.networkingRelative,
    //         builder: (context, state) => const Placeholder(),
    //         routes: [
    //           GoRoute(
    //             path: Routes.fetchDataRelative,
    //             builder: (context, state) {
    //               return const CookbookNetworkingFetchDataScreen();
    //             },
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    //   // riverpod
    //   GoRoute(
    //     path: Routes.riverpod,
    //     builder: (context, state) {
    //       return const RiverpodScreen();
    //     },
    //     routes: [
    //       GoRoute(
    //         path: Routes.gettingStartedRelative,
    //         builder: (context, state) {
    //           return const RiverpodGettingStartedScreen();
    //         },
    //       ),
    //       GoRoute(
    //         path: Routes.randomJokeRelative,
    //         builder: (context, state) {
    //           return const RiverpodRandomJokeScreen();
    //         },
    //       ),
    //     ],
    //   ),
    //   // animations
    //   GoRoute(
    //     path: Routes.animations,
    //     builder: (context, state) {
    //       return const AnimationsScreen();
    //     },
    //   ),
    //   // 404
    //   GoRoute(
    //     path: Routes.notFound,
    //     builder: (context, state) => const NotFoundScreen(),
    //   ),
    //   StatefulShellRoute.indexedStack(
    //     branches: [
    //       StatefulShellBranch(
    //         routes: [
    //           GoRoute(
    //             path: Routes.fitnessTrackerWorkoutList,
    //             builder: (BuildContext context, GoRouterState state) =>
    //                 const Placeholder(),
    //           ),
    //         ],
    //       ),
    //       StatefulShellBranch(
    //         routes: [
    //           GoRoute(
    //             path: Routes.fitnessTrackerChat,
    //             builder: (BuildContext context, GoRouterState state) =>
    //                 const Placeholder(),
    //           ),
    //         ],
    //       ),
    //       StatefulShellBranch(
    //         routes: [
    //           GoRoute(
    //             path: Routes.fitnessTrackerProfile,
    //             builder: (BuildContext context, GoRouterState state) =>
    //                 const Placeholder(),
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // ],
  );
}

Future<String?> _redirect(BuildContext context, GoRouterState state) async {
  final loggedIn = await context.read<AuthRepository>().isAuthenticated;
  final loggingIn = state.matchedLocation == Routes.login;
  if (!loggedIn) {
    return Routes.login;
  }

  if (loggingIn) {
    return Routes.home;
  }

  return null;
}
