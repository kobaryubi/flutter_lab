import Flutter
import UIKit

/// Factory for creating MapKit-based platform views
final class MapViewFactory: NSObject, FlutterPlatformViewFactory {
  // MARK: - Properties
  
  private let messenger: FlutterBinaryMessenger
  
  // MARK: - Initialization
  
  init(messenger: FlutterBinaryMessenger) {
    self.messenger = messenger
    super.init()
  }
  
  // MARK: - FlutterPlatformViewFactory
  
  func create(
    withFrame frame: CGRect,
    viewIdentifier viewId: Int64,
    arguments args: Any?
  ) -> FlutterPlatformView {
    return MapViewController(
      frame: frame,
      viewIdentifier: viewId,
      arguments: args,
      binaryMessenger: messenger
    )
  }
  
  func createArgsCodec() -> FlutterMessageCodec & NSObjectProtocol {
    return FlutterStandardMessageCodec.sharedInstance()
  }
}
