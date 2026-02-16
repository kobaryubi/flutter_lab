/// Gateway interface for native button events.
abstract class NativeButtonGateway {
  /// Stream that emits when the native button is tapped.
  Stream<void> get onTap;
}
