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
