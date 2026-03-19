import 'package:result_dart/result_dart.dart';

/// Gateway for Adfurikun SDK operations.
///
/// Abstracts the Adfurikun SDK behind a domain-layer interface.
abstract class AdfurikunGateway {
  /// Initializes an interstitial ad instance for the given app ID.
  ///
  /// Creates an ad instance and sets up its listener.
  AsyncResult<Unit> initializeInterstitialAd({required String appId});

  /// Loads an interstitial ad for the given app ID.
  ///
  /// Completes with [Unit] when the ad is loaded and ready to be shown.
  AsyncResult<Unit> loadInterstitialAd({required String appId});

  /// Plays an interstitial ad for the given app ID.
  ///
  /// Completes with [Unit] when the ad is closed.
  AsyncResult<Unit> playInterstitialAd({required String appId});

  /// Initializes a reward ad instance for the given app ID.
  ///
  /// Creates an ad instance and sets up its listener.
  AsyncResult<Unit> initializeRewardAd({required String appId});

  /// Loads a reward ad for the given app ID.
  ///
  /// Completes with [Unit] when the ad is loaded and ready to be shown.
  AsyncResult<Unit> loadRewardAd({required String appId});

  /// Plays a reward ad for the given app ID.
  ///
  /// Completes with [Unit] when the ad is closed.
  AsyncResult<Unit> playRewardAd({required String appId});

  /// Whether the user earned a reward from the last played ad
  /// for the given app ID.
  bool isRewarded({required String appId});

  /// Cleans up all ad instances.
  void dispose();
}
