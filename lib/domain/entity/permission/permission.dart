/// Represents the permissions that the app can request.
enum Permission {
  /// Camera access.
  camera,

  /// Location access (while in use).
  location,

  /// Location access (always / background).
  locationAlways,

  /// Push notification permission.
  notification,

  /// App Tracking Transparency (iOS).
  appTrackingTransparency,
}
