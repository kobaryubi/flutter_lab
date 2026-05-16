import 'package:freezed_annotation/freezed_annotation.dart';

part 'cookie.freezed.dart';

/// A WebView cookie, abstracted from the `flutter_inappwebview` SDK so the
/// presentation layer never depends on the concrete SDK cookie type.
@freezed
abstract class Cookie with _$Cookie {
  const factory Cookie({
    required String name,
    required bool isHttpOnly,
    required bool isSecure,
    String? value,
    String? domain,
    String? path,
  }) = _Cookie;
}
