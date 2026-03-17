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

  /// Shows an interstitial ad for the given app ID.
  ///
  /// Completes with [Unit] when the ad is closed.
  AsyncResult<Unit> showInterstitialAd({required String appId});

  /// Initializes a reward ad instance for the given app ID.
  ///
  /// Creates an ad instance and sets up its listener.
  AsyncResult<Unit> initializeRewardAd({required String appId});

  /// Loads a reward ad for the given app ID.
  ///
  /// Completes with [Unit] when the ad is loaded and ready to be shown.
  AsyncResult<Unit> loadRewardAd({required String appId});

  /// Shows a reward ad for the given app ID.
  ///
  /// Completes with [Unit] when the ad is closed.
  AsyncResult<Unit> showRewardAd({required String appId});

  /// Whether the user earned a reward from the last shown ad
  /// for the given app ID.
  bool isRewardEarned({required String appId});

  /// Cleans up all ad instances.
  void dispose();
}
