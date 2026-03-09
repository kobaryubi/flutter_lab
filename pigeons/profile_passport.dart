import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/gen/pigeon/profile_passport.g.dart',
    swiftOut: 'ios/Runner/Pigeon/ProfilePassport.g.swift',
    kotlinOut:
        'android/app/src/main/kotlin/com/masahikokobayashi/flutterlab/pigeon/ProfilePassport.g.kt',
    kotlinOptions: KotlinOptions(
      package: 'com.masahikokobayashi.flutterlab.pigeon',
      includeErrorClass: false,
    ),
    swiftOptions: SwiftOptions(
      includeErrorClass: false,
    ),
    dartPackageName: 'flutter_lab',
  ),
)
/// Pigeon host API for ProfilePassport SDK integration.
///
/// Provides methods to start the PPSDK service
/// via the native ProfilePassport SDK.
@HostApi()
abstract class ProfilePassportHostApi {
  /// Starts the PPSDK service.
  @async
  void startService();
}
