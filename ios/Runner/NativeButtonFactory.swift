import Flutter
import UIKit

/// Factory for creating native UIButton platform views.
final class NativeButtonFactory: NSObject, FlutterPlatformViewFactory {
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
    return NativeButton(
      frame: frame,
      viewIdentifier: viewId,
      arguments: args,
      binaryMessenger: messenger
    )
  }
}
