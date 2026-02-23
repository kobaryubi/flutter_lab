import Flutter
import UIKit

/// Plugin for handling battery level queries from Flutter
final class BatteryPlugin: NSObject, FlutterPlugin {
  // MARK: - Constants
  
  private static let channelName = "samples.flutter.dev/battery"
  
  // MARK: - FlutterPlugin
  
  static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(
      name: channelName,
      binaryMessenger: registrar.messenger()
    )
    let instance = BatteryPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }
  
  // MARK: - FlutterMethodCallDelegate
  
  func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getBatteryLevel":
      receiveBatteryLevel(result: result)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
  
  // MARK: - Private Methods
  
  private func receiveBatteryLevel(result: FlutterResult) {
    let device = UIDevice.current
    device.isBatteryMonitoringEnabled = true
    
    guard device.batteryState != .unknown else {
      result(
        FlutterError(
          code: "UNAVAILABLE",
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
