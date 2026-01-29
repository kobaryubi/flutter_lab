// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
  $appLifecycleRoute,
  $cameraRoute,
  $errorHandlingRoute,
  $homeRoute,
  $launchUrlRoute,
  $locationRoute,
  $notFoundRoute,
  $portalRoute,
  $routingCupertinoFullscreenDialogRoute,
  $routingCupertinoRoute,
  $routingRoute,
  $s3EtagCacheRoute,
  $sharedPreferencesRoute,
  $webViewHookRoute,
];

RouteBase get $appLifecycleRoute => GoRouteData.$route(
  path: '/app_lifecycle',
  factory: $AppLifecycleRoute._fromState,
);

mixin $AppLifecycleRoute on GoRouteData {
  static AppLifecycleRoute _fromState(GoRouterState state) =>
      AppLifecycleRoute();

  @override
  String get location => GoRouteData.$location('/app_lifecycle');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $cameraRoute =>
    GoRouteData.$route(path: '/camera', factory: $CameraRoute._fromState);

mixin $CameraRoute on GoRouteData {
  static CameraRoute _fromState(GoRouterState state) => CameraRoute();

  @override
  String get location => GoRouteData.$location('/camera');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $errorHandlingRoute => GoRouteData.$route(
  path: '/error_handling',
  factory: $ErrorHandlingRoute._fromState,
);

mixin $ErrorHandlingRoute on GoRouteData {
  static ErrorHandlingRoute _fromState(GoRouterState state) =>
      ErrorHandlingRoute();

  @override
  String get location => GoRouteData.$location('/error_handling');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $homeRoute =>
    GoRouteData.$route(path: '/', factory: $HomeRoute._fromState);

mixin $HomeRoute on GoRouteData {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute();

  @override
  String get location => GoRouteData.$location('/');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $launchUrlRoute => GoRouteData.$route(
  path: '/launch_url',
  factory: $LaunchUrlRoute._fromState,
);

mixin $LaunchUrlRoute on GoRouteData {
  static LaunchUrlRoute _fromState(GoRouterState state) =>
      LaunchUrlRoute(url: state.uri.queryParameters['url']!);

  LaunchUrlRoute get _self => this as LaunchUrlRoute;

  @override
  String get location =>
      GoRouteData.$location('/launch_url', queryParams: {'url': _self.url});

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $locationRoute =>
    GoRouteData.$route(path: '/location', factory: $LocationRoute._fromState);

mixin $LocationRoute on GoRouteData {
  static LocationRoute _fromState(GoRouterState state) => LocationRoute();

  @override
  String get location => GoRouteData.$location('/location');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $notFoundRoute =>
    GoRouteData.$route(path: '/404', factory: $NotFoundRoute._fromState);

mixin $NotFoundRoute on GoRouteData {
  static NotFoundRoute _fromState(GoRouterState state) => NotFoundRoute();

  @override
  String get location => GoRouteData.$location('/404');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $portalRoute =>
    GoRouteData.$route(path: '/portal', factory: $PortalRoute._fromState);

mixin $PortalRoute on GoRouteData {
  static PortalRoute _fromState(GoRouterState state) => PortalRoute();

  @override
  String get location => GoRouteData.$location('/portal');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $routingCupertinoFullscreenDialogRoute => GoRouteData.$route(
  path: '/routing/cupertino/fullscreen_dialog',
  factory: $RoutingCupertinoFullscreenDialogRoute._fromState,
);

mixin $RoutingCupertinoFullscreenDialogRoute on GoRouteData {
  static RoutingCupertinoFullscreenDialogRoute _fromState(
    GoRouterState state,
  ) => RoutingCupertinoFullscreenDialogRoute();

  @override
  String get location =>
      GoRouteData.$location('/routing/cupertino/fullscreen_dialog');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $routingCupertinoRoute => GoRouteData.$route(
  path: '/routing/cupertino',
  factory: $RoutingCupertinoRoute._fromState,
);

mixin $RoutingCupertinoRoute on GoRouteData {
  static RoutingCupertinoRoute _fromState(GoRouterState state) =>
      RoutingCupertinoRoute();

  @override
  String get location => GoRouteData.$location('/routing/cupertino');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $routingRoute =>
    GoRouteData.$route(path: '/routing', factory: $RoutingRoute._fromState);

mixin $RoutingRoute on GoRouteData {
  static RoutingRoute _fromState(GoRouterState state) => RoutingRoute();

  @override
  String get location => GoRouteData.$location('/routing');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $s3EtagCacheRoute => GoRouteData.$route(
  path: '/s3_etag_cache',
  factory: $S3EtagCacheRoute._fromState,
);

mixin $S3EtagCacheRoute on GoRouteData {
  static S3EtagCacheRoute _fromState(GoRouterState state) => S3EtagCacheRoute();

  @override
  String get location => GoRouteData.$location('/s3_etag_cache');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $sharedPreferencesRoute => GoRouteData.$route(
  path: '/shared_preferences',
  factory: $SharedPreferencesRoute._fromState,
);

mixin $SharedPreferencesRoute on GoRouteData {
  static SharedPreferencesRoute _fromState(GoRouterState state) =>
      SharedPreferencesRoute();

  @override
  String get location => GoRouteData.$location('/shared_preferences');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $webViewHookRoute => GoRouteData.$route(
  path: '/web_view_hook',
  factory: $WebViewHookRoute._fromState,
);

mixin $WebViewHookRoute on GoRouteData {
  static WebViewHookRoute _fromState(GoRouterState state) => WebViewHookRoute();

  @override
  String get location => GoRouteData.$location('/web_view_hook');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(router)
const routerProvider = RouterProvider._();

final class RouterProvider
    extends $FunctionalProvider<GoRouter, GoRouter, GoRouter>
    with $Provider<GoRouter> {
  const RouterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'routerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$routerHash();

  @$internal
  @override
  $ProviderElement<GoRouter> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GoRouter create(Ref ref) {
    return router(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GoRouter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GoRouter>(value),
    );
  }
}

String _$routerHash() => r'c233fb038bfb42f2edc8fe88817930fb11b2b742';
