import Flutter
import PassKit
import UIKit

// MARK: - Pigeon GreetingApi Implementation

/// Native implementation of the Pigeon-generated GreetingApi protocol.
private class GreetingApiImpl: GreetingApi {
  func greet(name: String) throws -> String {
    return "Hello, \(name)!"
  }
}

// MARK: - Pigeon ExampleHostApi Implementation

/// Native implementation of the Pigeon-generated ExampleHostApi protocol.
private class ExampleHostApiImpl: ExampleHostApi {
  func getHostLanguage() throws -> String {
    return "Swift"
  }

  func add(a: Int64, b: Int64) throws -> Int64 {
    if a < 0 || b < 0 {
      throw PigeonError(code: "INVALID_ARGUMENT", message: "Numbers must be non-negative", details: nil)
    }
    return a + b
  }

  func sendMessage(message: MessageData, completion: @escaping (Result<Bool, Error>) -> Void) {
    if message.code == Code.one {
      completion(.failure(PigeonError(code: "code", message: "message", details: "details")))
      return
    }
    completion(.success(true))
  }
}

// MARK: - Pigeon PassKitHostApi Implementation

/// Native implementation of the Pigeon-generated PassKitHostApi protocol.
private class PassKitHostApiImpl: PassKitHostApi {
  func canAddPass(passTypeIdentifier: String, serialNumber: String) throws -> Bool {
    guard PKPassLibrary.isPassLibraryAvailable() else {
      return false
    }

    guard PKAddPassesViewController.canAddPasses() else {
      return false
    }

    let existingPass = PKPassLibrary().pass(
      withPassTypeIdentifier: passTypeIdentifier,
      serialNumber: serialNumber
    )

    return existingPass == nil
  }
}

// MARK: - Pigeon FlutterApi Wrapper

/// Wrapper for calling Flutter-side methods from native via Pigeon.
private class PigeonFlutterApi {
  var flutterAPI: MessageFlutterApi

  init(binaryMessenger: FlutterBinaryMessenger) {
    flutterAPI = MessageFlutterApi(binaryMessenger: binaryMessenger)
  }

  func callFlutterMethod(
    aString aStringArg: String?, completion: @escaping (Result<String, any Error>) -> Void
  ) {
    flutterAPI.flutterMethod(aString: aStringArg) { result in
      switch result {
      case .success(let value):
        completion(.success(value))
      case .failure(let error):
        completion(.failure(error))
      }
    }
  }
}

@main
@objc class AppDelegate: FlutterAppDelegate, FlutterImplicitEngineDelegate {
  // MARK: - Constants

  private static let mapViewPluginName = "MapViewPlugin"
  private static let mapViewId = "map"
  private static let nativeButtonPluginName = "NativeButtonPlugin"
  private static let nativeButtonId = "nativeButton"

  // MARK: - Properties

  private var locationHandler: LocationHandler?
  private var batteryHandler: BatteryHandler?

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

    let messenger = engineBridge.applicationRegistrar.messenger()

    // Initialize location handler
    locationHandler = LocationHandler(binaryMessenger: messenger)

    // Initialize battery handler
    batteryHandler = BatteryHandler(binaryMessenger: messenger)

    // Register Pigeon GreetingApi
    GreetingApiSetup.setUp(binaryMessenger: messenger, api: GreetingApiImpl())

    // Register Pigeon ExampleHostApi
    ExampleHostApiSetup.setUp(binaryMessenger: messenger, api: ExampleHostApiImpl())

    // Register Pigeon PassKitHostApi
    PassKitHostApiSetup.setUp(binaryMessenger: messenger, api: PassKitHostApiImpl())

    // Register map platform view
    let registrar = engineBridge.pluginRegistry.registrar(
      forPlugin: Self.mapViewPluginName
    )

    let mapViewFactory = MapViewFactory(messenger: registrar!.messenger())
    registrar!.register(
      mapViewFactory,
      withId: Self.mapViewId
    )

    // Register native button platform view
    let buttonRegistrar = engineBridge.pluginRegistry.registrar(
      forPlugin: Self.nativeButtonPluginName
    )

    let nativeButtonFactory = NativeButtonFactory(
      messenger: buttonRegistrar!.messenger()
    )
    buttonRegistrar!.register(
      nativeButtonFactory,
      withId: Self.nativeButtonId
    )
  }
}
