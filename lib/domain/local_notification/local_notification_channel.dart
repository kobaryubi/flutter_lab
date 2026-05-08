/// Channel options exposed by `LocalNotificationGateway.show`.
///
/// Each value corresponds to an Android notification channel registered at
/// app startup. The names mirror Android's `Importance` constants so the
/// importance level is obvious from the call site.
enum LocalNotificationChannel {
  /// Heads-up + sound.
  highImportance,

  /// Sound, no heads-up.
  defaultImportance,

  /// No sound, visible in the shade.
  lowImportance,

  /// Collapsed in the shade, no badge, no sound.
  minImportance
  ;

  /// Resolves a channel from a server-sent `data['channel']` value.
  ///
  /// Falls back to [defaultImportance] when [key] is null or unrecognized,
  /// matching Android's default channel behavior.
  static LocalNotificationChannel fromKey(String? key) => switch (key) {
    'high' => highImportance,
    'default' => defaultImportance,
    'low' => lowImportance,
    'min' => minImportance,
    _ => defaultImportance,
  };
}
