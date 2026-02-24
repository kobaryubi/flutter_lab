import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/data/gateway/pigeon_example/messages.g.dart',
    swiftOut: 'ios/Runner/Messages.g.swift',
    kotlinOut:
        'android/app/src/main/kotlin/com/example/flutter_lab/Messages.g.kt',
    kotlinOptions: KotlinOptions(),
    swiftOptions: SwiftOptions(),
    dartPackageName: 'flutter_lab',
  ),
)

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
