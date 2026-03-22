import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/gen/pigeon/pass_kit.g.dart',
    swiftOut: 'ios/Runner/Pigeon/PassKit.g.swift',
    swiftOptions: SwiftOptions(
      includeErrorClass: false,
    ),
    dartPackageName: 'flutter_lab',
  ),
)
/// Pigeon host API for Apple Wallet (PassKit) integration.
///
/// Provides methods to check pass availability on iOS.
@HostApi()
abstract class PassKitHostApi {
  /// Returns whether the specified pass can be added to Apple Wallet.
  ///
  /// Checks if the device supports adding passes and the pass
  /// with the given [passTypeIdentifier] and [serialNumber]
  /// is not already in the wallet.
  bool canAddPass(String passTypeIdentifier, String serialNumber);
}
