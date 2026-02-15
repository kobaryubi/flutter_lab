import Flutter
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate, FlutterImplicitEngineDelegate {
  // MARK: - Constants
  
  private static let mapViewPluginName = "MapViewPlugin"
  private static let mapViewId = "map"
  
  // MARK: - Properties
  
  private var locationHandler: LocationHandler?
  
  // MARK: - Application Lifecycle
  
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  // MARK: - FlutterImplicitEngineDelegate
  
  func didInitializeImplicitFlutterEngine(_ engineBridge: FlutterImplicitEngineBridge) {
    GeneratedPluginRegistrant.register(with: engineBridge.pluginRegistry)
    
    // Initialize location handler
    locationHandler = LocationHandler(
      binaryMessenger: engineBridge.applicationRegistrar.messenger()
    )

    // Register map platform view
    let registrar = engineBridge.pluginRegistry.registrar(
      forPlugin: Self.mapViewPluginName
    )
    
    let mapViewFactory = MapViewFactory(messenger: registrar!.messenger())
    registrar!.register(
      mapViewFactory,
      withId: Self.mapViewId
    )
  }
}
