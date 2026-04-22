/// Keys for FlutterSecureStorage.
///
/// No production writes use secure storage yet; this class is pre-seeded so
/// the debug tooling has a stable allowlist to enumerate against.
abstract final class SecureStorageKeys {
  /// All keys declared in this class. Used by debug tooling to enumerate
  /// only the keys the app knows about, rather than every stored key.
  static const all = <String>{};
}
