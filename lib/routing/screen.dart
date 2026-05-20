import 'package:flutter_lab/domain/value_object/member_state/member_state.dart';
import 'package:flutter_lab/routing/routes.dart';

/// Identifier for every screen reachable in the app.
///
/// Each value carries:
/// - [path]: the GoRouter path string, mirroring a constant in [Routes]
/// - [allowedStates]: the [MemberState]s permitted to visit this screen
///
/// Declaring the access policy as a required constructor argument means
/// that adding a new screen without an explicit allowed-states set is a
/// compile-time error — accidentally exposing a screen to all states is
/// impossible.
enum Screen {
  home(
    Routes.home,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  login(Routes.login, {MemberState.guest}),
  loggedInHome(
    Routes.loggedInHome,
    {MemberState.provisional, MemberState.regular},
  ),
  loggedInHomeTab1(
    Routes.loggedInHomeTab1,
    {MemberState.provisional, MemberState.regular},
  ),
  loggedInHomeTab2(
    Routes.loggedInHomeTab2,
    {MemberState.provisional, MemberState.regular},
  ),
  notFound(
    Routes.notFound,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  webView(
    Routes.webView,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  launchUrl(
    Routes.launchUrl,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  launchUrlDetail(
    Routes.launchUrlDetail,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  portal(
    Routes.portal,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  sharedPreferences(
    Routes.sharedPreferences,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  s3EtagCache(
    Routes.s3EtagCache,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  appLifecycle(
    Routes.appLifecycle,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  localPaths(
    Routes.localPaths,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  localIcon(
    Routes.localIcon,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  urlNavigation(
    Routes.urlNavigation,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  dioCache(
    Routes.dioCache,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  etagCache(
    Routes.etagCache,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  pushNotification(
    Routes.pushNotification,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  appStore(
    Routes.appStore,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  network(
    Routes.network,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  brightness(
    Routes.brightness,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  inAppReview(
    Routes.inAppReview,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  screenshotPrevention(
    Routes.screenshotPrevention,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  ocr(
    Routes.ocr,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  ocrResult(
    Routes.ocrResult,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  loading(
    Routes.loading,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  loadingSubmit(
    Routes.loadingSubmit,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  formBuilder(
    Routes.formBuilder,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  permission(
    Routes.permission,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  popScope(
    Routes.popScope,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  autoMapprDemo(
    Routes.autoMapprDemo,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  effectVsListen(
    Routes.effectVsListen,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  methodChannel(
    Routes.methodChannel,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  asyncStateRace(
    Routes.asyncStateRace,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  googleApi(
    Routes.googleApi,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  pigeon(
    Routes.pigeon,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  dialogState(
    Routes.dialogState,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  observerDemo(
    Routes.observerDemo,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  observerDemoDetail(
    Routes.observerDemoDetail,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  routeAwareDemo(
    Routes.routeAwareDemo,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  routeAwareDemoDetail(
    Routes.routeAwareDemoDetail,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  currentRouteState(
    Routes.currentRouteState,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  navigationScreenA(
    Routes.navigationScreenA,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  navigationScreenB(
    Routes.navigationScreenB,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  navigationScreenC(
    Routes.navigationScreenC,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  clock(
    Routes.clock,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  counter(
    Routes.counter,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  deviceInfo(
    Routes.deviceInfo,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  horizontalLayout(
    Routes.horizontalLayout,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  nestedButton(
    Routes.nestedButton,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  markupSample(
    Routes.markupSample,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  imageProcessing(
    Routes.imageProcessing,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  camera(
    Routes.camera,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  routing(
    Routes.routing,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  routingCupertino(
    Routes.routingCupertino,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  routingCupertinoFullscreenDialog(
    Routes.routingCupertinoFullscreenDialog,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  petCache(
    Routes.petCache,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  arutana(
    Routes.arutana,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  max(
    Routes.max,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  adfurikun(
    Routes.adfurikun,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  profilePassport(
    Routes.profilePassport,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  animatedSwitcher(
    Routes.animatedSwitcher,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  analytics(
    Routes.analytics,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  crashlytics(
    Routes.crashlytics,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  firebasePerformance(
    Routes.firebasePerformance,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  shellDemo(
    Routes.shellDemo,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  shellDemoTab1(
    Routes.shellDemoTab1,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  shellDemoTab2(
    Routes.shellDemoTab2,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  shellDemoDetail(
    Routes.shellDemoDetail,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  shellDemoSub(
    Routes.shellDemoSub,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  tutorial(
    Routes.tutorial,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  scrollToSection(
    Routes.scrollToSection,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  visibilityDetector(
    Routes.visibilityDetector,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  streamSubscription(
    Routes.streamSubscription,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  webViewTabs(
    Routes.webViewTabs,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  webViewJavascript(
    Routes.webViewJavascript,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  webviewCookie(
    Routes.webviewCookie,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  httpOnlyCookie(
    Routes.httpOnlyCookie,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  webViewRemoteUrl(
    Routes.webViewRemoteUrl,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  adjustDeferredDeeplink(
    Routes.adjustDeferredDeeplink,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  talkerLogs(
    Routes.talkerLogs,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  errorHandling(
    Routes.errorHandling,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  tarDownload(
    Routes.tarDownload,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  ossLicenses(
    Routes.ossLicenses,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  ),
  debug(
    Routes.debug,
    {MemberState.guest, MemberState.provisional, MemberState.regular},
  )
  ;

  const Screen(this.path, this.allowedStates);

  /// The GoRouter path string for this screen.
  final String path;

  /// The [MemberState]s that are permitted to visit this screen.
  final Set<MemberState> allowedStates;
}
