import Flutter
import CoreLocation

/// Handles location-related method channel calls from Flutter
final class LocationHandler: NSObject {
  // MARK: - Constants
  
  static let channelName = "com.masahikokobayashi/location"
  static let eventChannelName = "com.masahikokobayashi/locationUpdates"
  
  private enum MethodName {
    static let getLocation = "getLocation"
    static let watchLocation = "watchLocation"
  }
  
  private enum ErrorCode {
    static let permissionDenied = "PERMISSION_DENIED"
    static let unavailable = "UNAVAILABLE"
  }
  
  // MARK: - Properties
  
  private let methodChannel: FlutterMethodChannel
  private let eventChannel: FlutterEventChannel
  private let locationManager: CLLocationManager
  private var eventSink: FlutterEventSink?
  
  // MARK: - Initialization
  
  init(binaryMessenger: any FlutterBinaryMessenger) {
    self.methodChannel = FlutterMethodChannel(
      name: Self.channelName,
      binaryMessenger: binaryMessenger
    )
    self.eventChannel = FlutterEventChannel(
      name: Self.eventChannelName,
      binaryMessenger: binaryMessenger
    )
    self.locationManager = CLLocationManager()
    
    super.init()
    
    locationManager.delegate = self
    methodChannel.setMethodCallHandler(handleMethodCall)
    eventChannel.setStreamHandler(self)
  }
  
  // MARK: - Method Call Handler
  
  private func handleMethodCall(
    _ call: FlutterMethodCall,
    result: @escaping FlutterResult
  ) {
    switch call.method {
    case MethodName.getLocation:
      getLocation(result: result)
    case MethodName.watchLocation:
      watchLocation()
      result(nil)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
  
  // MARK: - Private Methods
  
  private func getLocation(result: @escaping FlutterResult) {
    let authorizationStatus = locationManager.authorizationStatus
    
    guard authorizationStatus == .authorizedWhenInUse || authorizationStatus == .authorizedAlways else {
      result(FlutterError(
        code: ErrorCode.permissionDenied,
        message: "Location permission denied.",
        details: nil
      ))
      return
    }
    
    guard let location = locationManager.location else {
      result(FlutterError(
        code: ErrorCode.unavailable,
        message: "Location not available.",
        details: nil
      ))
      return
    }
    
    let locationData: [String: Double] = [
      "latitude": location.coordinate.latitude,
      "longitude": location.coordinate.longitude
    ]
    
    result(locationData)
  }
  
  private func watchLocation() {
    locationManager.startUpdatingLocation()
  }
}

// MARK: - CLLocationManagerDelegate

extension LocationHandler: CLLocationManagerDelegate {
  func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    guard let location = locations.last else { return }
    
    let locationData: [String: Double] = [
      "latitude": location.coordinate.latitude,
      "longitude": location.coordinate.longitude
    ]
    
    eventSink?(locationData)
  }
  
  func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
    eventSink?(FlutterError(
      code: ErrorCode.unavailable,
      message: "Location update failed: \(error.localizedDescription)",
      details: nil
    ))
  }
}
// MARK: - FlutterStreamHandler

extension LocationHandler: FlutterStreamHandler {
  func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
    self.eventSink = events
    return nil
  }
  
  func onCancel(withArguments arguments: Any?) -> FlutterError? {
    locationManager.stopUpdatingLocation()
    self.eventSink = nil
    return nil
  }
}

