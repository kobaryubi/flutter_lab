/// Parses cookie strings as returned by `document.cookie` in a WebView.
class CookieParser {
  /// Parses a `document.cookie` string into name/value pairs.
  ///
  /// Empty input returns an empty map. Whitespace around tokens is trimmed.
  /// Pairs without `=`, or pairs whose name is empty, are skipped. When the
  /// value contains `=`, only the first `=` is treated as the separator so
  /// the rest is preserved as part of the value.
  static Map<String, String> parse({required String raw}) {
    final cookies = <String, String>{};

    if (raw.isEmpty) {
      return cookies;
    }

    for (final pair in raw.split(';')) {
      final trimmed = pair.trim();

      if (trimmed.isEmpty) {
        continue;
      }

      final equalsIndex = trimmed.indexOf('=');

      if (equalsIndex <= 0) {
        continue;
      }

      final name = trimmed.substring(0, equalsIndex).trim();
      final value = trimmed.substring(equalsIndex + 1).trim();
      cookies[name] = value;
    }

    return cookies;
  }
}
