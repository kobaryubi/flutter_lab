import Flutter
import UIKit

/// Handles battery-related method channel calls from Flutter
final class BatteryHandler: NSObject {
  // MARK: - Constants
  
  static let channelName = "com.masahikokobayashi/battery"
  
  private enum MethodName {
    static let getBatteryLevel = "getBatteryLevel"
  }
  
  private enum ErrorCode {
    static let unavailable = "UNAVAILABLE"
  }
  
  // MARK: - Properties
  
  private let methodChannel: FlutterMethodChannel
  
  // MARK: - Initialization
  
  init(binaryMessenger: any FlutterBinaryMessenger) {
    self.methodChannel = FlutterMethodChannel(
      name: Self.channelName,
      binaryMessenger: binaryMessenger
    )
    
    super.init()
    
    methodChannel.setMethodCallHandler(handleMethodCall)
  }
  
  // MARK: - Method Call Handler
  
  private func handleMethodCall(
    _ call: FlutterMethodCall,
    result: @escaping FlutterResult
  ) {
    switch call.method {
    case MethodName.getBatteryLevel:
      getBatteryLevel(result: result)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
  
  // MARK: - Private Methods
  
  private func getBatteryLevel(result: FlutterResult) {
    let device = UIDevice.current
    device.isBatteryMonitoringEnabled = true
    
    guard device.batteryState != .unknown else {
      result(
        FlutterError(
          code: ErrorCode.unavailable,
          message: "Battery level not available.",
          details: nil
        )
      )
      return
    }
    
    let batteryLevel = Int(device.batteryLevel * 100)
    result(batteryLevel)
  }
}
