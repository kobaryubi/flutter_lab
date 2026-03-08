import 'dart:async';

import 'package:applovin_max/applovin_max.dart';
import 'package:flutter_lab/domain/max/max_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// AppLovin MAX SDK implementation of [MaxGateway].
class SdkMaxGateway implements MaxGateway {
  /// Creates a [SdkMaxGateway].
  ///
  /// [sdkKey] is the AppLovin SDK key. Pass an empty string for template mode.
  /// [rewardedAdUnitId] is the ad unit ID for rewarded ads per platform.
  /// [testDeviceAdvertisingIds] is a list of device advertising IDs
  /// for test mode.
  SdkMaxGateway({
    required String sdkKey,
    required String rewardedAdUnitId,
    List<String> testDeviceAdvertisingIds = const [],
  }) : _sdkKey = sdkKey,
       _rewardedAdUnitId = rewardedAdUnitId,
       _testDeviceAdvertisingIds = testDeviceAdvertisingIds;

  final String _sdkKey;
  final String _rewardedAdUnitId;
  final List<String> _testDeviceAdvertisingIds;

  Completer<bool> _loadAdCompleter = Completer<bool>();
  bool _isRewardEarned = false;

  @override
  AsyncResult<Unit> initialize() async {
    try {
      AppLovinMAX.setTestDeviceAdvertisingIds(_testDeviceAdvertisingIds);
      await AppLovinMAX.initialize(_sdkKey);

      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  @override
  AsyncResult<bool> loadRewardedAd() async {
    try {
      _loadAdCompleter = Completer<bool>();
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

      final isLoaded = await _loadAdCompleter.future;

      return Success(isLoaded);
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
  void _handleAdLoaded(MaxAd ad) {
    _loadAdCompleter.complete(true);
  }

  /// Handles ad load failure.
  void _handleAdLoadFailed(String adUnitId, MaxError error) {
    _loadAdCompleter.completeError(
      Exception('Failed to load ad: ${error.message}'),
    );
  }

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
