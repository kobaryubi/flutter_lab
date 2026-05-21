/// Routing-layer helpers for converting [Uri] values into the
/// intra-app location strings consumed by GoRouter.
extension UriLocation on Uri {
  /// Returns the intra-app location string (path + query + fragment),
  /// stripped of scheme and host, suitable for passing to
  /// `GoRouter.go` / `context.go`.
  ///
  /// Example:
  /// `https://kobaryubi.github.io/foo?id=bar#section` → `/foo?id=bar#section`
  String toLocation() => Uri(
    path: path,
    query: hasQuery ? query : null,
    fragment: hasFragment ? fragment : null,
  ).toString();
}
