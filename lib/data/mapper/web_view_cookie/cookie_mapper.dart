import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart' as inappwebview;
import 'package:flutter_lab/data/mapper/web_view_cookie/cookie_mapper.auto_mappr.dart';
import 'package:flutter_lab/domain/entity/cookie/cookie.dart';

/// Maps a `flutter_inappwebview` cookie into the domain-layer [Cookie].
@AutoMappr([
  MapType<inappwebview.Cookie, Cookie>(
    fields: [
      Field.custom('value', custom: CookieMapper.valueFrom),
      Field.custom('isHttpOnly', custom: CookieMapper.isHttpOnlyFrom),
      Field.custom('isSecure', custom: CookieMapper.isSecureFrom),
    ],
  ),
])
class CookieMapper extends $CookieMapper {
  const CookieMapper();

  /// Reads the cookie value as a string, or `null` when the SDK cookie
  /// has no value.
  static String? valueFrom(inappwebview.Cookie source) =>
      source.value?.toString();

  /// Reads the `HttpOnly` flag, defaulting to `false` when unset.
  static bool isHttpOnlyFrom(inappwebview.Cookie source) =>
      source.isHttpOnly ?? false;

  /// Reads the `Secure` flag, defaulting to `false` when unset.
  static bool isSecureFrom(inappwebview.Cookie source) =>
      source.isSecure ?? false;
}
