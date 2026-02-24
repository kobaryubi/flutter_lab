import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/data/gateway/greeting/greeting_api.g.dart',
    swiftOut: 'ios/Runner/GreetingApi.g.swift',
    kotlinOut:
        'android/app/src/main/kotlin/com/example/flutter_lab/GreetingApi.g.kt',
    kotlinOptions: KotlinOptions(),
    swiftOptions: SwiftOptions(),
    dartPackageName: 'flutter_lab',
  ),
)
/// Type-safe Pigeon API for greeting messages.
///
/// The native host returns `"Hello, {name}!"` for a given name.
@HostApi()
abstract class GreetingApi {
  /// Returns a greeting message for the given [name].
  String greet(String name);
}
