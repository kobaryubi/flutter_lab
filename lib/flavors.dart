enum Flavor {
  local,
  production,
}

class F {
  static late final Flavor appFlavor;

  static String get name => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavor.local:
        return 'Flutter Lab Local';
      case Flavor.production:
        return 'Flutter Lab';
    }
  }

  /// Host used to reach the local nginx asset server.
  ///
  /// Override at run time with `--dart-define=LOCAL_HOST=<mac-ip>` so a
  /// physical device can reach the Mac (the simulator keeps `localhost`).
  static const _localHost = String.fromEnvironment(
    'LOCAL_HOST',
    defaultValue: 'localhost',
  );

  /// Base URL for loading assets (images, etc.).
  static String get assetBaseUrl => switch (appFlavor) {
    .local => 'http://$_localHost:8081',
    .production => 'https://your-bucket.s3.amazonaws.com',
  };

  /// Test device advertising IDs for AppLovin MAX SDK test mode.
  static List<String> get testDeviceAdvertisingIds {
    switch (appFlavor) {
      case Flavor.local:
        return ['TODO-IDFA', 'TODO-GAID'];
      case Flavor.production:
        return [];
    }
  }
}
