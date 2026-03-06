import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/gen/pigeon/common.g.dart',
    swiftOut: 'ios/Runner/Pigeon/Common.g.swift',
    kotlinOut:
        'android/app/src/main/kotlin/com/masahikokobayashi/flutterlab/pigeon/Common.g.kt',
    kotlinOptions: KotlinOptions(
      package: 'com.masahikokobayashi.flutterlab.pigeon',
    ),
    swiftOptions: SwiftOptions(),
    dartPackageName: 'flutter_lab',
  ),
)
/// Placeholder API to trigger error class generation.
///
/// This file exists solely to generate the shared error class
/// (FlutterError for Kotlin, PigeonError for Swift).
/// Other Pigeon files set includeErrorClass to false and rely on this one.
@HostApi()
abstract class CommonPigeon {}
