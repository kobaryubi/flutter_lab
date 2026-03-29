/// Analytics event names for custom events.
///
/// Each name must follow Firebase conventions
/// (max 40 characters, alphanumeric + underscores).
enum EventName {
  /// A tap interaction event.
  tap('tap'),

  /// A test button tapped event.
  testButtonTapped('test_button_tapped'),

  /// A MAX SDK ad event.
  maxAdEvent('max_ad_event'),
  ;

  const EventName(this.value);

  /// The raw string value sent to the analytics SDK.
  final String value;
}
