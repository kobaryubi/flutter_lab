import 'package:flutter/cupertino.dart';
import 'package:flutter_lab/data/repositories/auth/auth_repository.dart';
import 'package:flutter_lab/presentation/error_handling/screen/error_handling_screen.dart';
import 'package:flutter_lab/routing/routes.dart';
import 'package:flutter_lab/ui/camera/widget/camera_screen.dart';
import 'package:flutter_lab/ui/error/widgets/not_found_screen.dart';
import 'package:flutter_lab/ui/home/widgets/home_screen.dart';
import 'package:flutter_lab/ui/launch_url/widget/launch_url_screen.dart';
import 'package:flutter_lab/ui/lifecycle/widget/lifecycle_screen.dart';
import 'package:flutter_lab/ui/location/widgets/location_screen.dart';
import 'package:flutter_lab/ui/portal/widget/portal_screen.dart';
import 'package:flutter_lab/ui/routing/widget/routing_screen.dart';
import 'package:flutter_lab/ui/routing_cupertino/widget/routing_cupertino_screen.dart';
import 'package:flutter_lab/ui/routing_cupertino_fullscreen_dialog/widget/routing_cupertino_fullscreen_dialog_screen.dart';
import 'package:flutter_lab/ui/s3_etag_cache/widget/s3_etag_cache_screen.dart';
import 'package:flutter_lab/ui/shared_preferences/widget/shared_preferences_screen.dart';
import 'package:flutter_lab/ui/webview_hook/widget/web_view_hook_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'camera_route.dart';
part 'error_handling_route.dart';
part 'home_route.dart';
part 'launch_url_route.dart';
part 'location_route.dart';
part 'not_found_route.dart';
part 'portal_route.dart';
part 'router.g.dart';
part 'routing_cupertino_fullscreen_dialog_route.dart';
part 'routing_cupertino_route.dart';
part 'routing_route.dart';
part 's3_etag_cache_route.dart';
part 'shared_preferences_route.dart';
part 'lifecycle_route.dart';
part 'webview_hook_route.dart';

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
    //     routes: [
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
    //   // riverpod
    //   GoRoute(
    //     routes: [
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
