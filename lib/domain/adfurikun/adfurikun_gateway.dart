import 'package:result_dart/result_dart.dart';

/// Gateway for Adfurikun SDK operations.
///
/// Abstracts the Adfurikun SDK behind a domain-layer interface.
abstract class AdfurikunGateway {
  /// Initializes an interstitial ad instance for the given app ID.
  ///
  /// Creates an [AdfurikunInterstitial] instance and sets up its listener.
  AsyncResult<Unit> initializeInterstitialAd({required String appId});

  /// Loads an interstitial ad for the given app ID.
  ///
  /// Completes with [Unit] when the ad is loaded and ready to be shown.
  AsyncResult<Unit> loadInterstitialAd({required String appId});

  /// Shows an interstitial ad for the given app ID.
  ///
  /// Completes with [Unit] when the ad is closed.
  AsyncResult<Unit> showInterstitialAd({required String appId});

  /// Cleans up all ad instances.
  void dispose();
}
