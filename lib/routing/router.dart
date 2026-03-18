import 'package:flutter/cupertino.dart';
import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/domain/entity/launch_url/launch_url_mode.dart';
import 'package:flutter_lab/presentation/core/provider/global_loading_notifier.dart';
import 'package:flutter_lab/routing/analytics_navigation_observer.dart';
import 'package:flutter_lab/routing/loading_navigation_observer.dart';
import 'package:flutter_lab/routing/observer_demo_observer.dart';
import 'package:flutter_lab/routing/route_observer.dart';
import 'package:flutter_lab/routing/routes.dart';
import 'package:flutter_lab/ui/adfurikun/widget/adfurikun_screen.dart';
import 'package:flutter_lab/ui/analytics/widget/analytics_screen.dart';
import 'package:flutter_lab/ui/animated_switcher/widget/animated_switcher_screen.dart';
import 'package:flutter_lab/ui/app_lifecycle/widget/app_lifecycle_screen.dart';
import 'package:flutter_lab/ui/app_store/widget/app_store_screen.dart';
import 'package:flutter_lab/ui/arutana/widget/arutana_screen.dart';
import 'package:flutter_lab/ui/async_state_race/widget/async_state_race_screen.dart';
import 'package:flutter_lab/ui/auto_mappr_demo/widget/auto_mappr_demo_screen.dart';
import 'package:flutter_lab/ui/brightness/widget/brightness_screen.dart';
import 'package:flutter_lab/ui/clock/widget/clock_screen.dart';
import 'package:flutter_lab/ui/device_info/widget/device_info_screen.dart';
import 'package:flutter_lab/ui/dialog_state/widget/dialog_state_screen.dart';
import 'package:flutter_lab/ui/dio_cache/widget/dio_cache_screen.dart';
import 'package:flutter_lab/ui/effect_vs_listen/widget/effect_vs_listen_screen.dart';
import 'package:flutter_lab/ui/error/widgets/not_found_screen.dart';
import 'package:flutter_lab/ui/etag_cache/widget/etag_cache_screen.dart';
import 'package:flutter_lab/ui/form_builder/widget/form_builder_screen.dart';
import 'package:flutter_lab/ui/google_api/widget/google_api_screen.dart';
import 'package:flutter_lab/ui/home/widgets/home_screen.dart';
import 'package:flutter_lab/ui/horizontal_layout/widget/horizontal_layout_screen.dart';
import 'package:flutter_lab/ui/in_app_review/widget/in_app_review_screen.dart';
import 'package:flutter_lab/ui/launch_url/widget/launch_url_detail_screen.dart';
import 'package:flutter_lab/ui/launch_url/widget/launch_url_screen.dart';
import 'package:flutter_lab/ui/loading/widget/loading_screen.dart';
import 'package:flutter_lab/ui/local_icon/widget/local_icon_screen.dart';
import 'package:flutter_lab/ui/local_paths/widget/local_paths_screen.dart';
import 'package:flutter_lab/ui/max/widget/max_screen.dart';
import 'package:flutter_lab/ui/method_channel/widget/method_channel_screen.dart';
import 'package:flutter_lab/ui/navigation/widget/navigation_screen_a.dart';
import 'package:flutter_lab/ui/navigation/widget/navigation_screen_b.dart';
import 'package:flutter_lab/ui/navigation/widget/navigation_screen_c.dart';
import 'package:flutter_lab/ui/network/widget/network_screen.dart';
import 'package:flutter_lab/ui/observer_demo/provider/observer_demo_view_model.dart';
import 'package:flutter_lab/ui/observer_demo/widget/observer_demo_detail_screen.dart';
import 'package:flutter_lab/ui/observer_demo/widget/observer_demo_screen.dart';
import 'package:flutter_lab/ui/ocr/widget/ocr_result_screen.dart';
import 'package:flutter_lab/ui/ocr/widget/ocr_screen.dart';
import 'package:flutter_lab/ui/permission/widget/permission_screen.dart';
import 'package:flutter_lab/ui/pet_cache/widget/pet_cache_screen.dart';
import 'package:flutter_lab/ui/pigeon/widget/pigeon_screen.dart';
import 'package:flutter_lab/ui/pop_scope/widget/pop_scope_screen.dart';
import 'package:flutter_lab/ui/portal/widget/portal_screen.dart';
import 'package:flutter_lab/ui/profile_passport/widget/profile_passport_screen.dart';
import 'package:flutter_lab/ui/push_notification/widget/push_notification_screen.dart';
import 'package:flutter_lab/ui/route_aware_demo/widget/route_aware_demo_detail_screen.dart';
import 'package:flutter_lab/ui/route_aware_demo/widget/route_aware_demo_screen.dart';
import 'package:flutter_lab/ui/routing/widget/routing_screen.dart';
import 'package:flutter_lab/ui/routing_cupertino/widget/routing_cupertino_screen.dart';
import 'package:flutter_lab/ui/routing_cupertino_fullscreen_dialog/widget/routing_cupertino_fullscreen_dialog_screen.dart';
import 'package:flutter_lab/ui/s3_etag_cache/widget/s3_etag_cache_screen.dart';
import 'package:flutter_lab/ui/screenshot_prevention/widget/screenshot_prevention_screen.dart';
import 'package:flutter_lab/ui/shared_preferences/widget/shared_preferences_screen.dart';
import 'package:flutter_lab/ui/shell_demo/widget/shell_demo_detail_screen.dart';
import 'package:flutter_lab/ui/shell_demo/widget/shell_demo_screen.dart';
import 'package:flutter_lab/ui/shell_demo/widget/shell_demo_sub_screen.dart';
import 'package:flutter_lab/ui/shell_demo/widget/shell_demo_tab1_screen.dart';
import 'package:flutter_lab/ui/shell_demo/widget/shell_demo_tab2_screen.dart';
import 'package:flutter_lab/ui/url_navigation/widget/url_navigation_screen.dart';
import 'package:flutter_lab/ui/web_view/widgets/web_view_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'adfurikun_route.dart';
part 'analytics_route.dart';
part 'animated_switcher_route.dart';
part 'app_lifecycle_route.dart';
part 'app_store_route.dart';
part 'arutana_route.dart';
part 'async_state_race_route.dart';
part 'auto_mappr_demo_route.dart';
part 'brightness_route.dart';
part 'clock_route.dart';
part 'device_info_route.dart';
part 'dialog_state_route.dart';
part 'dio_cache_route.dart';
part 'effect_vs_listen_route.dart';
part 'etag_cache_route.dart';
part 'form_builder_route.dart';
part 'google_api_route.dart';
part 'home_route.dart';
part 'horizontal_layout_route.dart';
part 'in_app_review_route.dart';
part 'launch_url_detail_route.dart';
part 'launch_url_route.dart';
part 'loading_route.dart';
part 'local_icon_route.dart';
part 'local_paths_route.dart';
part 'max_route.dart';
part 'method_channel_route.dart';
part 'navigation_screen_a_route.dart';
part 'navigation_screen_b_route.dart';
part 'navigation_screen_c_route.dart';
part 'network_route.dart';
part 'not_found_route.dart';
part 'observer_demo_route.dart';
part 'ocr_result_route.dart';
part 'ocr_route.dart';
part 'permission_route.dart';
part 'pet_cache_route.dart';
part 'pigeon_route.dart';
part 'pop_scope_route.dart';
part 'portal_route.dart';
part 'profile_passport_route.dart';
part 'push_notification_route.dart';
part 'route_aware_demo_route.dart';
part 'router.g.dart';
part 'routing_cupertino_fullscreen_dialog_route.dart';
part 'routing_cupertino_route.dart';
part 'routing_route.dart';
part 's3_etag_cache_route.dart';
part 'screenshot_prevention_route.dart';
part 'shared_preferences_route.dart';
part 'shell_demo_detail_route.dart';
part 'shell_demo_route.dart';
part 'shell_demo_sub_route.dart';
part 'url_navigation_route.dart';
part 'web_view_route.dart';

@riverpod
GoRouter router(Ref ref) {
  final loadingNotifier = ref.read(globalLoadingProvider.notifier);

  return GoRouter(
    initialLocation: Routes.home,
    onException: (context, state, router) {
      router.go(Routes.notFound);
    },
    debugLogDiagnostics: true,
    routes: $appRoutes,
    observers: [
      AnalyticsNavigationObserver(
        logViewEventUseCase: ref.read(logViewEventUseCaseProvider),
      ),
      ref.read(routeObserverProvider),
      LoadingNavigationObserver(
        onShowLoading: loadingNotifier.show,
        onHideLoading: loadingNotifier.hide,
      ),
      ObserverDemoObserver(
        onEvent: (event) => Future(() {
          if (!ref.exists(observerDemoViewModelProvider)) return;

          ref
              .read(observerDemoViewModelProvider.notifier)
              .addEvent(event: event);
        }),
      ),
    ],
  );
}
