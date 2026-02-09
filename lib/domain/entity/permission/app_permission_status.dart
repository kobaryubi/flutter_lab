/// Represents the status of a permission request.
enum AppPermissionStatus {
  /// The permission has been denied.
  denied,

  /// The permission has been granted.
  granted,

  /// The permission has been permanently denied.
  permanentlyDenied,

  /// The permission is restricted (iOS only).
  restricted,

  /// The permission is granted with limitations (iOS only).
  limited,

  /// The permission is provisionally granted (iOS only).
  provisional,
}
