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
}
