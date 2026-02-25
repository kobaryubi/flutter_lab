class MethodNames {
  static const String getBatteryLevel = 'getBatteryLevel';
  static const String getLocation = 'getLocation';
  static const String watchLocation = 'watchLocation';

  // Pigeon - triggers native to call Dart via FlutterApi
  static const String callFlutterMethod = 'callFlutterMethod';

  // Arutana Ad - commands (Flutter -> Native)
  static const String showInterstitial = 'showInterstitial';

  // Arutana Ad - callbacks (Native -> Flutter)
  static const String onInterstitialReceived = 'onInterstitialReceived';
  static const String onInterstitialShown = 'onInterstitialShown';
  static const String onInterstitialClosed = 'onInterstitialClosed';
  static const String onInterstitialFailed = 'onInterstitialFailed';
}
