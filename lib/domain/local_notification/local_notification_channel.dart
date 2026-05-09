/// Channel ID registered with Android for the high-importance channel.
/// FCM payloads target this channel via `notification.android.channelId`.
const highImportanceChannelId = 'high_importance_channel';

/// Channel ID for the default-importance channel.
const defaultImportanceChannelId = 'default_importance_channel';

/// Channel ID for the low-importance channel.
const lowImportanceChannelId = 'low_importance_channel';

/// Channel ID for the minimum-importance channel.
const minImportanceChannelId = 'min_importance_channel';

/// Channel options exposed by `LocalNotificationGateway.show`.
///
/// Each value carries the Android channel ID it maps to. The names mirror
/// Android's `Importance` constants so the importance level is obvious
/// from the call site.
enum LocalNotificationChannel {
  /// Heads-up + sound.
  highImportance(highImportanceChannelId),

  /// Sound, no heads-up.
  defaultImportance(defaultImportanceChannelId),

  /// No sound, visible in the shade.
  lowImportance(lowImportanceChannelId),

  /// Collapsed in the shade, no badge, no sound.
  minImportance(minImportanceChannelId)
  ;

  const LocalNotificationChannel(this.id);

  /// Channel ID registered with Android's NotificationManager. Server-side
  /// FCM payloads should pass this value in `notification.android.channelId`.
  final String id;

  /// Resolves a channel from a server-sent channel ID.
  ///
  /// Falls back to [defaultImportance] when [id] is null or unrecognized,
  /// matching Android's default channel behavior.
  static LocalNotificationChannel fromId(String? id) => values.firstWhere(
    (channel) => channel.id == id,
    orElse: () => defaultImportance,
  );
}
