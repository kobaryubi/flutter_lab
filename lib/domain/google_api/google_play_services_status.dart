/// Status of Google Play Services availability on the device.
enum GooglePlayServicesStatus {
  /// Google Play Services are available and up-to-date.
  success,

  /// Google Play Services are missing on the device.
  serviceMissing,

  /// Google Play Services are currently updating.
  serviceUpdating,

  /// Google Play Services require a version update.
  serviceVersionUpdateRequired,

  /// Google Play Services are disabled on the device.
  serviceDisabled,

  /// Google Play Services are invalid (e.g. wrong signature).
  serviceInvalid,

  /// Google Play Services are not available on this platform (e.g. iOS).
  notAvailableOnPlatform,

  /// An unknown status was returned.
  unknown,
}
