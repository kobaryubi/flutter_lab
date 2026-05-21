import 'package:result_dart/result_dart.dart';

/// Normalizes incoming URL strings into the app's canonical https form.
///
/// The app accepts deep links under the custom [_customScheme] (e.g.
/// `flutterlab:///foo`), universal links under [_canonicalHost], and a
/// legacy query-style format (`/index.html?id=foo`). This service folds
/// all three into a single canonical https [Uri] so downstream code
/// only needs to handle one URL space.
class DeeplinkService {
  const DeeplinkService();

  static const _customScheme = 'flutterlab';
  static const _canonicalHost = 'kobaryubi.github.io';
  static const _legacyPaths = {'', '/', '/index.html'};
  static const _legacyIdParam = 'id';

  /// Returns the canonical [Uri] for [url], or a [Failure] if [url] is
  /// not a parseable absolute URI.
  ///
  /// - `flutterlab:///foo` → `https://kobaryubi.github.io/foo`
  /// - `https://kobaryubi.github.io/index.html?id=foo` →
  ///   `https://kobaryubi.github.io/foo`
  /// - `https://kobaryubi.github.io/?id=foo` →
  ///   `https://kobaryubi.github.io/foo`
  /// - `https://kobaryubi.github.io?id=foo` →
  ///   `https://kobaryubi.github.io/foo`
  /// - Any other valid absolute URI is returned unchanged.
  Result<Uri> normalize({required String url}) {
    final parsed = Uri.tryParse(url);

    if (parsed == null || !parsed.hasScheme) {
      return FormatException('Invalid URL: $url').toFailure();
    }

    final rehosted = parsed.scheme == _customScheme
        ? parsed.replace(scheme: 'https', host: _canonicalHost)
        : parsed;

    final id = rehosted.queryParameters[_legacyIdParam];
    final isLegacy =
        rehosted.host == _canonicalHost &&
        _legacyPaths.contains(rehosted.path) &&
        id != null &&
        id.isNotEmpty;

    if (!isLegacy) {
      return rehosted.toSuccess();
    }

    final remainingParams = Map<String, String>.from(rehosted.queryParameters)
      ..remove(_legacyIdParam);

    return rehosted
        .replace(path: '/$id', queryParameters: remainingParams)
        .toSuccess();
  }
}
