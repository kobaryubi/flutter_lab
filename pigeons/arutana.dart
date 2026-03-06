import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/gen/pigeon/arutana.g.dart',
    swiftOut: 'ios/Runner/Pigeon/Arutana.g.swift',
    kotlinOut:
        'android/app/src/main/kotlin/com/masahikokobayashi/flutterlab/pigeon/Arutana.g.kt',
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
/// Pigeon host API for Arutana ad SDK integration.
///
/// Provides methods to initialize interstitial and movie ads
/// via the native Arutana SDK.
@HostApi()
abstract class ArutanaHostApi {
  /// Initializes an interstitial ad via the Arutana SDK.
  void initializeInterstitialAd();

  /// Initializes a movie ad via the Arutana SDK.
  void initializeMovieAd();
}
