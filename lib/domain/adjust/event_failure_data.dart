/// Data received when an Adjust event fails to record.
///
/// Maps to the Adjust SDK's event failure callback response.
class EventFailureData {
  /// Creates an [EventFailureData].
  const EventFailureData({
    this.eventToken,
    this.message,
    this.timestamp,
    this.adid,
    this.callbackId,
    this.willRetry,
    this.jsonResponse,
  });

  /// The event token identifier.
  final String? eventToken;

  /// The server message or SDK error.
  final String? message;

  /// The server timestamp.
  final String? timestamp;

  /// The unique Adjust device identifier.
  final String? adid;

  /// The custom callback ID set on the event.
  final String? callbackId;

  /// Whether the SDK will retry sending the event.
  final bool? willRetry;

  /// The JSON server response.
  final String? jsonResponse;
}
