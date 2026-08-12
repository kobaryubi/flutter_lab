import Flutter
import UIKit

/// Factory for creating PKAddPassButton platform views.
final class AddPassButtonFactory: NSObject, FlutterPlatformViewFactory {
  // MARK: - FlutterPlatformViewFactory

  func create(
    withFrame frame: CGRect,
    viewIdentifier viewId: Int64,
    arguments args: Any?
  ) -> FlutterPlatformView {
    return AddPassButton(
      frame: frame,
      viewIdentifier: viewId,
      arguments: args
    )
  }
}
