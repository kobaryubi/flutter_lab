import 'package:flutter_lab/domain/value_object/member_state/member_state.dart';
import 'package:flutter_lab/routing/routes.dart';

/// Identifier for every screen reachable in the app.
///
/// Each value carries:
/// - [path]: the GoRouter path string, mirroring a constant in [Routes]
/// - [allowedStates]: the [MemberState]s permitted to visit this screen
/// - [isAllowedFromDeeplink]: whether this screen may be reached from an
///   incoming deeplink (false by default — opt-in per screen)
///
/// Declaring the access policy as a required constructor argument means
/// that adding a new screen without an explicit allowed-states set is a
/// compile-time error — accidentally exposing a screen to all states is
/// impossible.
enum Screen {
  home(
    Routes.home,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  login(Routes.login, {MemberState.guest}, isAllowedFromDeeplink: false),
  loggedInHome(
    Routes.loggedInHome,
    {MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  loggedInHomeTab1(
    Routes.loggedInHomeTab1,
    {MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  loggedInHomeTab2(
    Routes.loggedInHomeTab2,
    {MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  notFound(
    Routes.notFound,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  webView(
    Routes.webView,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  launchUrl(
    Routes.launchUrl,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  launchUrlDetail(
    Routes.launchUrlDetail,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  portal(
    Routes.portal,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  sharedPreferences(
    Routes.sharedPreferences,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  s3EtagCache(
    Routes.s3EtagCache,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  appLifecycle(
    Routes.appLifecycle,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  localPaths(
    Routes.localPaths,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  localIcon(
    Routes.localIcon,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  urlNavigation(
    Routes.urlNavigation,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  dioCache(
    Routes.dioCache,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  etagCache(
    Routes.etagCache,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  pushNotification(
    Routes.pushNotification,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  appStore(
    Routes.appStore,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  network(
    Routes.network,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  brightness(
    Routes.brightness,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  inAppReview(
    Routes.inAppReview,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  screenshotPrevention(
    Routes.screenshotPrevention,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  ocr(
    Routes.ocr,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  ocrResult(
    Routes.ocrResult,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  loading(
    Routes.loading,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  loadingSubmit(
    Routes.loadingSubmit,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  formBuilder(
    Routes.formBuilder,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  permission(
    Routes.permission,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  popScope(
    Routes.popScope,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  autoMapprDemo(
    Routes.autoMapprDemo,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  effectVsListen(
    Routes.effectVsListen,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  methodChannel(
    Routes.methodChannel,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  asyncStateRace(
    Routes.asyncStateRace,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  googleApi(
    Routes.googleApi,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  pigeon(
    Routes.pigeon,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  dialogState(
    Routes.dialogState,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  observerDemo(
    Routes.observerDemo,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  observerDemoDetail(
    Routes.observerDemoDetail,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  routeAwareDemo(
    Routes.routeAwareDemo,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  routeAwareDemoDetail(
    Routes.routeAwareDemoDetail,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  currentRouteState(
    Routes.currentRouteState,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  navigationScreenA(
    Routes.navigationScreenA,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  navigationScreenB(
    Routes.navigationScreenB,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  navigationScreenC(
    Routes.navigationScreenC,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  clock(
    Routes.clock,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  counter(
    Routes.counter,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  deviceInfo(
    Routes.deviceInfo,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  horizontalLayout(
    Routes.horizontalLayout,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  nestedButton(
    Routes.nestedButton,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  markupSample(
    Routes.markupSample,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  imageProcessing(
    Routes.imageProcessing,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  camera(
    Routes.camera,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  routing(
    Routes.routing,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  routingCupertino(
    Routes.routingCupertino,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  routingCupertinoFullscreenDialog(
    Routes.routingCupertinoFullscreenDialog,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  petCache(
    Routes.petCache,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  profilePassport(
    Routes.profilePassport,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  animatedSwitcher(
    Routes.animatedSwitcher,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  analytics(
    Routes.analytics,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  crashlytics(
    Routes.crashlytics,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  firebasePerformance(
    Routes.firebasePerformance,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  shellDemo(
    Routes.shellDemo,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  shellDemoTab1(
    Routes.shellDemoTab1,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  shellDemoTab2(
    Routes.shellDemoTab2,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  shellDemoDetail(
    Routes.shellDemoDetail,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  shellDemoSub(
    Routes.shellDemoSub,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  tutorial(
    Routes.tutorial,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  scrollToSection(
    Routes.scrollToSection,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  visibilityDetector(
    Routes.visibilityDetector,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  streamSubscription(
    Routes.streamSubscription,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  webViewTabs(
    Routes.webViewTabs,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  webViewJavascript(
    Routes.webViewJavascript,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  webviewCookie(
    Routes.webviewCookie,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  httpOnlyCookie(
    Routes.httpOnlyCookie,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  webViewRemoteUrl(
    Routes.webViewRemoteUrl,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  adjustDeferredDeeplink(
    Routes.adjustDeferredDeeplink,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  talkerLogs(
    Routes.talkerLogs,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  errorHandling(
    Routes.errorHandling,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  errorPortal(
    Routes.errorPortal,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  tarDownload(
    Routes.tarDownload,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  ossLicenses(
    Routes.ossLicenses,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  refreshTokenLogin(
    Routes.refreshTokenLogin,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  refreshTokenLoginWebView(
    Routes.refreshTokenLoginWebView,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  refreshTokenMyPage(
    Routes.refreshTokenMyPage,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  ),
  debug(
    Routes.debug,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
    isAllowedFromDeeplink: false,
  )
  ;

  const Screen(
    this.path,
    this.allowedStates, {
    required this.isAllowedFromDeeplink,
  });

  /// The GoRouter path string for this screen.
  final String path;

  /// The [MemberState]s that are permitted to visit this screen.
  final Set<MemberState> allowedStates;

  /// Whether this screen may be reached from an incoming deeplink.
  final bool isAllowedFromDeeplink;

  /// Returns whether a user in [state] is allowed to visit this screen.
  bool isAccessibleBy(MemberState state) => allowedStates.contains(state);

  /// Returns the [Screen] whose [path] matches `uri.path`, or null if
  /// none match. Query and fragment are ignored — only the path is
  /// used for lookup.
  static Screen? fromUri(Uri uri) =>
      Screen.values.where((screen) => screen.path == uri.path).firstOrNull;
}
