import 'package:result_dart/result_dart.dart';

/// Gateway for AppLovin MAX SDK operations.
///
/// Abstracts the MAX SDK behind a domain-layer interface.
abstract class MaxGateway {
  /// Initializes the AppLovin MAX SDK.
  AsyncResult<Unit> initialize();

  /// Loads a rewarded ad.
  ///
  /// Completes with [Unit] when the ad is loaded and ready to be shown.
  AsyncResult<Unit> loadRewardedAd();

  /// Shows a rewarded ad if one is ready.
  ///
  /// Returns `true` if the user earned a reward.
  AsyncResult<bool> showRewardedAd();

  /// Opens the AppLovin mediation debugger overlay.
  Result<Unit> showMediationDebugger();
}
