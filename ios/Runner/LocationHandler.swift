import Flutter
import CoreLocation

/// Handles location-related method channel calls from Flutter
final class LocationHandler: NSObject {
  // MARK: - Constants
  
  static let channelName = "com.masahikokobayashi/location"
  
  private enum MethodName {
    static let getLocation = "getLocation"
  }
  
  private enum ErrorCode {
    static let permissionDenied = "PERMISSION_DENIED"
    static let unavailable = "UNAVAILABLE"
  }
  
  // MARK: - Properties
  
  private let methodChannel: FlutterMethodChannel
  private let locationManager: CLLocationManager
  
  // MARK: - Initialization
  
  init(binaryMessenger: any FlutterBinaryMessenger) {
    self.methodChannel = FlutterMethodChannel(
      name: Self.channelName,
      binaryMessenger: binaryMessenger
    )
    self.locationManager = CLLocationManager()
    
    super.init()
    
    locationManager.delegate = self
    methodChannel.setMethodCallHandler(handleMethodCall)
  }
  
  // MARK: - Method Call Handler
  
  private func handleMethodCall(
    _ call: FlutterMethodCall,
    result: @escaping FlutterResult
  ) {
    switch call.method {
    case MethodName.getLocation:
      getLocation(result: result)
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
}

// MARK: - CLLocationManagerDelegate

extension LocationHandler: CLLocationManagerDelegate {}
