import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/data/gateway/pigeon/pigeon_api.g.dart',
    swiftOut: 'ios/Runner/PigeonApi.g.swift',
    kotlinOut:
        'android/app/src/main/kotlin/com/masahikokobayashi/flutterlab/PigeonApi.g.kt',
    kotlinOptions: KotlinOptions(),
    swiftOptions: SwiftOptions(),
    dartPackageName: 'flutter_lab',
  ),
)
// --- GreetingApi ---
/// Type-safe Pigeon API for greeting messages.
///
/// The native host returns `"Hello, {name}!"` for a given name.
@HostApi()
abstract class GreetingApi {
  /// Returns a greeting message for the given [name].
  String greet(String name);
}

// --- ExampleHostApi ---

/// Error code for message data.
enum Code { one, two }

/// Structured message data sent to the host platform.
class MessageData {
  MessageData({required this.code, required this.data});

  String? name;
  String? description;
  Code code;
  Map<String, String> data;
}

/// Host API demonstrating Pigeon's HostApi pattern.
///
/// Methods are called from Dart and implemented on the native side.
@HostApi()
abstract class ExampleHostApi {
  /// Returns the host platform language name (e.g. "Swift" or "Kotlin").
  String getHostLanguage();

  /// Adds two integers on the native side.
  int add(int a, int b);

  /// Sends a structured message to the host and returns success.
  @async
  bool sendMessage(MessageData message);
}

/// Flutter API demonstrating Pigeon's FlutterApi pattern.
///
/// Methods are called from native and implemented on the Dart side.
@FlutterApi()
abstract class MessageFlutterApi {
  /// Echoes the given string back to the host.
  String flutterMethod(String? aString);
}
