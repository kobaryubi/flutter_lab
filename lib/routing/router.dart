import 'package:flutter/cupertino.dart';
import 'package:flutter_lab/data/repositories/auth/auth_repository.dart';

import 'package:flutter_lab/routing/routes.dart';
import 'package:flutter_lab/ui/app_lifecycle/widget/app_lifecycle_screen.dart';
import 'package:flutter_lab/ui/app_store/widget/app_store_screen.dart';
import 'package:flutter_lab/ui/arutana_ad/widget/arutana_ad_screen.dart';
import 'package:flutter_lab/ui/brightness/widget/brightness_screen.dart';
import 'package:flutter_lab/ui/camera/widget/camera_screen.dart';
import 'package:flutter_lab/ui/dio_cache/widget/dio_cache_screen.dart';
import 'package:flutter_lab/ui/error/widgets/not_found_screen.dart';
import 'package:flutter_lab/ui/home/widgets/home_screen.dart';
import 'package:flutter_lab/ui/in_app_review/widget/in_app_review_screen.dart';
import 'package:flutter_lab/ui/launch_url/widget/launch_url_screen.dart';
import 'package:flutter_lab/ui/local_icon/widget/local_icon_screen.dart';
import 'package:flutter_lab/ui/local_paths/widget/local_paths_screen.dart';
import 'package:flutter_lab/ui/location/widgets/location_screen.dart';
import 'package:flutter_lab/ui/network/widget/network_screen.dart';
import 'package:flutter_lab/ui/ocr/widget/ocr_screen.dart';
import 'package:flutter_lab/ui/portal/widget/portal_screen.dart';
import 'package:flutter_lab/ui/push_notification/widget/push_notification_screen.dart';
import 'package:flutter_lab/ui/routing/widget/routing_screen.dart';
import 'package:flutter_lab/ui/routing_cupertino/widget/routing_cupertino_screen.dart';
import 'package:flutter_lab/ui/routing_cupertino_fullscreen_dialog/widget/routing_cupertino_fullscreen_dialog_screen.dart';
import 'package:flutter_lab/ui/s3_etag_cache/widget/s3_etag_cache_screen.dart';
import 'package:flutter_lab/ui/screenshot_prevention/widget/screenshot_prevention_screen.dart';
import 'package:flutter_lab/ui/shared_preferences/widget/shared_preferences_screen.dart';
import 'package:flutter_lab/ui/shell_demo/widget/branch_screen.dart';
import 'package:flutter_lab/ui/shell_demo/widget/shell_demo_scaffold.dart';
import 'package:flutter_lab/ui/url_navigation/widget/url_navigation_screen.dart';
import 'package:flutter_lab/ui/web_view/widgets/web_view_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_lifecycle_route.dart';
part 'app_store_route.dart';
part 'arutana_ad_route.dart';
part 'brightness_route.dart';
part 'camera_route.dart';
part 'dio_cache_route.dart';
part 'home_route.dart';
part 'in_app_review_route.dart';
part 'launch_url_route.dart';
part 'local_icon_route.dart';
part 'local_paths_route.dart';
part 'location_route.dart';
part 'network_route.dart';
part 'not_found_route.dart';
part 'ocr_route.dart';
part 'portal_route.dart';
part 'push_notification_route.dart';
part 'router.g.dart';
part 'routing_cupertino_fullscreen_dialog_route.dart';
part 'routing_cupertino_route.dart';
part 'routing_route.dart';
part 's3_etag_cache_route.dart';
part 'screenshot_prevention_route.dart';
part 'shared_preferences_route.dart';
part 'shell_demo_route.dart';
part 'url_navigation_route.dart';
part 'web_view_route.dart';

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
