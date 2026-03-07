import 'package:result_dart/result_dart.dart';

/// Gateway for the Arutana ad SDK.
///
/// Abstracts native Arutana SDK calls behind a domain-layer interface.
abstract class ArutanaGateway {
  /// Initializes an interstitial ad via the Arutana SDK.
  AsyncResult<void> initializeInterstitialAd();

  /// Initializes a movie ad via the Arutana SDK.
  AsyncResult<void> initializeMovieAd();
}
