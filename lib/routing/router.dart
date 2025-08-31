import 'package:flutter/widgets.dart';
import 'package:flutter_lab/data/repositories/auth/auth_repository.dart';
import 'package:flutter_lab/routing/routes.dart';
import 'package:flutter_lab/ui/activities/activities_view_model.dart';
import 'package:flutter_lab/ui/activities/widgets/activities_screen.dart';
import 'package:flutter_lab/ui/animations/widgets/animations_screen.dart';
import 'package:flutter_lab/ui/auth/login/widgets/login_screen.dart';
import 'package:flutter_lab/ui/auth/login/widgets/login_view_model.dart';
import 'package:flutter_lab/ui/compass/view_models/compass_view_model.dart';
import 'package:flutter_lab/ui/compass/widgets/compass_screen.dart';
import 'package:flutter_lab/ui/cookbook/widgets/cookbook_networking_fetch_data_screen.dart';
import 'package:flutter_lab/ui/home/widgets/home_screen.dart';
import 'package:flutter_lab/ui/optimistic_state/widgets/optimistic_state_screen.dart';
import 'package:flutter_lab/ui/optimistic_state/widgets/optimistic_state_view_model.dart';
import 'package:flutter_lab/ui/results/results_view_model.dart';
import 'package:flutter_lab/ui/results/widgets/results_screen.dart';
import 'package:flutter_lab/ui/riverpod/widgets/riverpod_getting_started_screen.dart';
import 'package:flutter_lab/ui/riverpod/widgets/riverpod_random_joke_screen.dart';
import 'package:flutter_lab/ui/riverpod/widgets/riverpod_screen.dart';
import 'package:flutter_lab/ui/search_form/search_form_view_model.dart';
import 'package:flutter_lab/ui/search_form/widgets/search_form_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

GoRouter router() => GoRouter(
  initialLocation: Routes.home,
  debugLogDiagnostics: true,
  redirect: _redirect,
  routes: [
    GoRoute(
      path: Routes.login,
      builder: (context, state) {
        return LoginScreen(
          viewModel: LoginViewModel(authRepository: context.read()),
        );
      },
    ),
    GoRoute(
      path: Routes.home,
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: Routes.searchRelative,
          builder: (context, state) {
            final viewModel = SearchFormViewModel(
              continentRepository: context.read(),
              itineraryConfigRepository: context.read(),
            );
            return SearchFormScreen(viewModel: viewModel);
          },
        ),
        GoRoute(
          path: Routes.resultsRelative,
          builder: (context, state) {
            final viewModel = ResultsViewModel(
              destinationRepository: context.read(),
              itineraryConfigRepository: context.read(),
            );
            return ResultsScreen(viewModel: viewModel);
          },
        ),
        GoRoute(
          path: Routes.activitiesRelative,
          builder: (context, state) {
            final viewModel = ActivitiesViewModel(
              activityRepository: context.read(),
              itineraryConfigRepository: context.read(),
            );
            return ActivitiesScreen(viewModel: viewModel);
          },
        ),
        //         GoRoute(
        //           path: Routes.bookingRelative,
        //           builder: (context, state) {
        //             final viewModel = BookingViewModel(
        //               itineraryConfigRepository: context.read(),
        //               createBookingUseCase: context.read(),
        //               shareBookingUseCase: context.read(),
        //               bookingRepository: context.read(),
        //             );

        //             // When opening the booking screen directly
        //             // create a new booking from the stored ItineraryConfig.
        //             viewModel.createBooking.execute();

        //             return BookingScreen(viewModel: viewModel);
        //           },
        //           routes: [
        //             GoRoute(
        //               path: ':id',
        //               builder: (context, state) {
        //                 final id = int.parse(state.pathParameters['id']!);
        //                 final viewModel = BookingViewModel(
        //                   itineraryConfigRepository: context.read(),
        //                   createBookingUseCase: context.read(),
        //                   shareBookingUseCase: context.read(),
        //                   bookingRepository: context.read(),
        //                 );

        //                 // When opening the booking screen with an existing id
        //                 // load and display that booking.
        //                 viewModel.loadBooking.execute(id);

        //                 return BookingScreen(viewModel: viewModel);
        //               },
        //             ),
        //           ],
        //         ),
        GoRoute(
          path: Routes.compassRelative,
          builder: (context, state) {
            final viewModel = CompassViewModel(
              bookingRepository: context.read(),
              userRepository: context.read(),
            );
            return CompassScreen(viewModel: viewModel);
          },
        ),
        GoRoute(
          path: Routes.optimisticStateRelative,
          builder: (context, state) {
            final viewModel = OptimisticStateViewModel(
              subscriptionRepository: context.read(),
            );
            return OptimisticStateScreen(viewModel: viewModel);
          },
        ),
      ],
    ),
    // cookbook
    GoRoute(
      path: Routes.cookbook,
      builder: (context, state) => const Placeholder(),
      routes: [
        GoRoute(
          path: Routes.networkingRelative,
          builder: (context, state) => const Placeholder(),
          routes: [
            GoRoute(
              path: Routes.fetchDataRelative,
              builder: (context, state) {
                return const CookbookNetworkingFetchDataScreen();
              },
            ),
          ],
        ),
      ],
    ),
    // riverpod
    GoRoute(
      path: Routes.riverpod,
      builder: (context, state) {
        return const RiverpodScreen();
      },
      routes: [
        GoRoute(
          path: Routes.gettingStartedRelative,
          builder: (context, state) {
            return const RiverpodGettingStartedScreen();
          },
        ),
        GoRoute(
          path: Routes.randomJokeRelative,
          builder: (context, state) {
            return const RiverpodRandomJokeScreen();
          },
        ),
      ],
    ),
    // animations
    GoRoute(
      path: Routes.animations,
      builder: (context, state) {
        return const AnimationsScreen();
      },
    ),
  ],
);

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
