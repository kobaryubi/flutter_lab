import 'package:result_dart/result_dart.dart';

/// Gateway for AppLovin MAX SDK operations.
///
/// Abstracts the MAX SDK behind a domain-layer interface.
abstract class MaxGateway {
  /// Initializes the AppLovin MAX SDK.
  AsyncResult<Unit> initialize();

  /// Loads a rewarded ad for the given [adUnitId].
  ///
  /// Completes with [Unit] when the ad is loaded and ready to be shown.
  AsyncResult<Unit> loadRewardedAd({required String adUnitId});

  /// Shows a rewarded ad for the given [adUnitId] if one is ready.
  ///
  /// Completes with [Unit] when the ad is hidden.
  AsyncResult<Unit> showRewardedAd({required String adUnitId});

  /// Whether the user earned a reward from the last shown ad
  /// for the given [adUnitId].
  bool isRewarded({required String adUnitId});

  /// Opens the AppLovin mediation debugger overlay.
  Result<Unit> showMediationDebugger();
}
