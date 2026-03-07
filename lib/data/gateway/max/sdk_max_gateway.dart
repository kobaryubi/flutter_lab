import 'package:applovin_max/applovin_max.dart';
import 'package:flutter_lab/domain/max/max_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// AppLovin MAX SDK implementation of [MaxGateway].
class SdkMaxGateway implements MaxGateway {
  /// Creates a [SdkMaxGateway].
  ///
  /// [sdkKey] is the AppLovin SDK key. Pass an empty string for template mode.
  /// [rewardedAdUnitId] is the ad unit ID for rewarded ads per platform.
  SdkMaxGateway({
    required String sdkKey,
    required String rewardedAdUnitId,
  }) : _sdkKey = sdkKey,
       _rewardedAdUnitId = rewardedAdUnitId;

  final String _sdkKey;
  final String _rewardedAdUnitId;

  bool _isRewardEarned = false;

  @override
  AsyncResult<Unit> initialize() async {
    try {
      await AppLovinMAX.initialize(_sdkKey);

      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  @override
  AsyncResult<Unit> loadRewardedAd() async {
    try {
      AppLovinMAX.setRewardedAdListener(
        RewardedAdListener(
          onAdLoadedCallback: _handleAdLoaded,
          onAdLoadFailedCallback: _handleAdLoadFailed,
          onAdDisplayedCallback: _handleAdDisplayed,
          onAdDisplayFailedCallback: _handleAdDisplayFailed,
          onAdClickedCallback: _handleAdClicked,
          onAdHiddenCallback: _handleAdHidden,
          onAdReceivedRewardCallback: _handleAdReceivedReward,
        ),
      );
      AppLovinMAX.loadRewardedAd(_rewardedAdUnitId);

      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  @override
  AsyncResult<bool> showRewardedAd() async {
    try {
      final isReady =
          await AppLovinMAX.isRewardedAdReady(_rewardedAdUnitId) ?? false;

      if (!isReady) {
        return Failure(Exception('Rewarded ad is not ready'));
      }

      _isRewardEarned = false;
      AppLovinMAX.showRewardedAd(_rewardedAdUnitId);

      return Success(_isRewardEarned);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  /// Handles successful ad load.
  void _handleAdLoaded(MaxAd ad) {}

  /// Handles ad load failure.
  void _handleAdLoadFailed(String adUnitId, MaxError error) {}

  /// Handles ad displayed event.
  void _handleAdDisplayed(MaxAd ad) {}

  /// Handles ad display failure.
  void _handleAdDisplayFailed(MaxAd ad, MaxError error) {}

  /// Handles ad clicked event.
  void _handleAdClicked(MaxAd ad) {}

  /// Handles ad hidden event.
  void _handleAdHidden(MaxAd ad) {}

  /// Handles reward received event.
  void _handleAdReceivedReward(MaxAd ad, MaxReward reward) {
    _isRewardEarned = true;
  }
}
