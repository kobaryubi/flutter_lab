/// Data received when an Adjust event is recorded successfully.
///
/// Maps to the Adjust SDK's event success callback response.
class EventSuccessData {
  /// Creates an [EventSuccessData].
  const EventSuccessData({
    this.eventToken,
    this.message,
    this.timestamp,
    this.adid,
    this.callbackId,
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

  /// The JSON server response.
  final String? jsonResponse;
}
