import 'dart:io';

/// Overrides the default [HttpClient] to accept self-signed certificates.
///
/// This allows HTTPS traffic inspection with proxy tools like Charles Proxy.
/// Should only be used in development builds.
class DevHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) =>
      super.createHttpClient(context)
        ..badCertificateCallback = (_, _, _) => true;
}
