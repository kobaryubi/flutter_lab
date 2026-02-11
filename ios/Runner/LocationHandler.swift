import Flutter
import CoreLocation

/// Handles location-related method channel calls from Flutter
final class LocationHandler: NSObject {
  // MARK: - Constants
  
  static let channelName = "com.masahikokobayashi/location"
  
  private enum MethodName {
    static let getLocation = "getLocation"
  }
}
