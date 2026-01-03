abstract final class Routes {
  static const home = '/';
  static const login = '/login';
  static const webview = '/$webviewRelative';
  static const webviewRelative = 'webview';
  static const petstore = '/$petstoreRelative';
  static const petstoreRelative = 'petstore';

  static const optimisticState = '/$optimisticStateRelative';
  static const optimisticStateRelative = 'optimistic-state';

  // animations
  static const animations = '/$animationsRelative';
  static const animationsRelative = 'animations';

  // 404
  static const notFound = '/404';

  // channel method
  static const location = '/$locationRelative';
  static const locationRelative = 'location';

  // routing
  static const routing = '/routing';
  static const routingCupertino = '/routing/cupertino';
  static const routingCupertinoFullscreenDialog =
      '/routing/cupertino/fullscreen_dialog';
  // webview遷移
  static const routingWebView = '/routing/webview';

  // launch url
  static const launchUrl = '/launch_url';

  /// camera
  static const camera = '/camera';

  /// portal
  static const portal = '/portal';

  /// error handling
  static const errorHandling = '/error_handling';

  /// shared preferences
  static const sharedPreferences = '/shared_preferences';
}
