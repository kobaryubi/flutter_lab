import 'package:flutter_lab/domain/entity/cookie/cookie.dart';
import 'package:result_dart/result_dart.dart';

/// Gateway abstracting WebView cookie operations.
///
/// Backed by the native cookie store, so it can read and write `HttpOnly`
/// cookies that the JavaScript `document.cookie` API cannot access.
abstract class WebViewCookieGateway {
  /// Returns every cookie stored for [url].
  AsyncResult<List<Cookie>> getCookies({required Uri url});

  /// Returns the cookie named [name] for [url].
  ///
  /// Fails when no cookie with that name exists.
  AsyncResult<Cookie> getCookie({required Uri url, required String name});

  /// Sets a cookie named [name] with [value] for [url].
  AsyncResult<Unit> setCookie({
    required Uri url,
    required String name,
    required String value,
  });

  /// Deletes the cookie named [name] for [url].
  AsyncResult<Unit> deleteCookie({required Uri url, required String name});

  /// Deletes every cookie stored for [url].
  AsyncResult<Unit> deleteCookies({required Uri url});

  /// Deletes every cookie stored for every URL.
  AsyncResult<Unit> deleteAllCookies();
}
