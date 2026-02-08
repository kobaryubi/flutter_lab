import 'package:flutter/cupertino.dart';
import 'package:flutter_lab/presentation/core/provider/global_loading_notifier.dart';
import 'package:flutter_lab/routing/loading_navigation_observer.dart';
import 'package:flutter_lab/routing/routes.dart';
import 'package:flutter_lab/ui/app_lifecycle/widget/app_lifecycle_screen.dart';
import 'package:flutter_lab/ui/app_store/widget/app_store_screen.dart';
import 'package:flutter_lab/ui/arutana_ad/widget/arutana_ad_screen.dart';
import 'package:flutter_lab/ui/auto_mappr_demo/widget/auto_mappr_demo_screen.dart';
import 'package:flutter_lab/ui/brightness/widget/brightness_screen.dart';
import 'package:flutter_lab/ui/dio_cache/widget/dio_cache_screen.dart';
import 'package:flutter_lab/ui/effect_vs_listen/widget/effect_vs_listen_screen.dart';
import 'package:flutter_lab/ui/error/widgets/not_found_screen.dart';
import 'package:flutter_lab/ui/form_builder/widget/form_builder_screen.dart';
import 'package:flutter_lab/ui/home/widgets/home_screen.dart';
import 'package:flutter_lab/ui/in_app_review/widget/in_app_review_screen.dart';
import 'package:flutter_lab/ui/launch_url/widget/launch_url_screen.dart';
import 'package:flutter_lab/ui/loading/widget/loading_screen.dart';
import 'package:flutter_lab/ui/local_icon/widget/local_icon_screen.dart';
import 'package:flutter_lab/ui/local_paths/widget/local_paths_screen.dart';
import 'package:flutter_lab/ui/location/widgets/location_screen.dart';
import 'package:flutter_lab/ui/max_sdk/widget/max_sdk_screen.dart';
import 'package:flutter_lab/ui/network/widget/network_screen.dart';
import 'package:flutter_lab/ui/ocr/widget/ocr_screen.dart';
import 'package:flutter_lab/ui/permission/widget/permission_screen.dart';
import 'package:flutter_lab/ui/pop_scope/widget/pop_scope_screen.dart';
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
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_lifecycle_route.dart';
part 'app_store_route.dart';
part 'auto_mappr_demo_route.dart';
part 'arutana_ad_route.dart';
part 'brightness_route.dart';
part 'dio_cache_route.dart';
part 'effect_vs_listen_route.dart';
part 'form_builder_route.dart';
part 'home_route.dart';
part 'in_app_review_route.dart';
part 'launch_url_route.dart';
part 'loading_route.dart';
part 'local_icon_route.dart';
part 'local_paths_route.dart';
part 'location_route.dart';
part 'max_sdk_route.dart';
part 'network_route.dart';
part 'not_found_route.dart';
part 'ocr_route.dart';
part 'permission_route.dart';
part 'pop_scope_route.dart';
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
  final loadingNotifier = ref.read(globalLoadingProvider.notifier);

  return GoRouter(
    initialLocation: Routes.home,
    onException: (context, state, router) {
      router.go(Routes.notFound);
    },
    debugLogDiagnostics: true,
    routes: $appRoutes,
    observers: [
      LoadingNavigationObserver(
        onShowLoading: loadingNotifier.show,
        onHideLoading: loadingNotifier.hide,
      ),
    ],
  );
}
