import Flutter
import PassKit
import UIKit

/// Platform view that displays a native PKAddPassButton.
final class AddPassButton: NSObject, FlutterPlatformView {
  // MARK: - Properties

  private let button: PKAddPassButton

  // MARK: - Initialization

  init(
    frame: CGRect,
    viewIdentifier viewId: Int64,
    arguments args: Any?
  ) {
    self.button = PKAddPassButton(addPassButtonStyle: .black)
    super.init()
  }

  // MARK: - FlutterPlatformView

  func view() -> UIView {
    return button
  }
}
