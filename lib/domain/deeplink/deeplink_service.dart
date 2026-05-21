import 'package:result_dart/result_dart.dart';

/// Normalizes incoming URL strings into the app's canonical https form.
///
/// The app accepts deep links under the custom [_customScheme] (e.g.
/// `flutterlab:///foo`) as well as universal links under
/// [_canonicalHost]. This service folds both into a single canonical
/// https [Uri] so downstream code only needs to handle one URL space.
class DeeplinkService {
  const DeeplinkService();

  static const _customScheme = 'flutterlab';
  static const _canonicalHost = 'kobaryubi.github.io';

  /// Returns the canonical [Uri] for [url], or a [Failure] if [url] is
  /// not a parseable absolute URI.
  ///
  /// - `flutterlab:///foo` → `https://kobaryubi.github.io/foo`
  /// - Any other valid absolute URI is returned unchanged.
  Result<Uri> normalize({required String url}) {
    final parsed = Uri.tryParse(url);

    if (parsed == null || !parsed.hasScheme) {
      return FormatException('Invalid URL: $url').toFailure();
    }

    if (parsed.scheme == _customScheme) {
      return parsed.replace(scheme: 'https', host: _canonicalHost).toSuccess();
    }

    return parsed.toSuccess();
  }
}
