import Flutter
import UIKit

/// Platform view that displays a native UIButton and sends tap events to Flutter.
final class NativeButton: NSObject, FlutterPlatformView {
  // MARK: - Properties

  private let button: UIButton
  private let channel: FlutterMethodChannel

  // MARK: - Initialization

  init(
    frame: CGRect,
    viewIdentifier viewId: Int64,
    arguments args: Any?,
    binaryMessenger messenger: FlutterBinaryMessenger
  ) {
    self.button = UIButton(type: .system)
    self.channel = FlutterMethodChannel(
      name: "com.masahikokobayashi/nativeButton",
      binaryMessenger: messenger
    )
    super.init()

    button.setTitle("Native Button", for: .normal)
    button.addTarget(self, action: #selector(handleTap), for: .touchUpInside)
  }

  // MARK: - FlutterPlatformView

  func view() -> UIView {
    return button
  }

  // MARK: - Actions

  @objc private func handleTap() {
    channel.invokeMethod("onTap", arguments: nil)
  }
}
