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
    bool isVerboseLoggingEnabled = false,
  }) : _sdkKey = sdkKey,
       _rewardedAdUnitId = rewardedAdUnitId,
       _testDeviceAdvertisingIds = testDeviceAdvertisingIds,
       _isVerboseLoggingEnabled = isVerboseLoggingEnabled;

  final String _sdkKey;
  final String _rewardedAdUnitId;
  final List<String> _testDeviceAdvertisingIds;
  final bool _isVerboseLoggingEnabled;

  Completer<Unit> _loadRewardedAdCompleter = Completer<Unit>();
  Completer<Unit> _showRewardedAdCompleter = Completer<Unit>();
  bool _isRewarded = false;

  @override
  AsyncResult<Unit> initialize() async {
    try {
      AppLovinMAX.setVerboseLogging(_isVerboseLoggingEnabled);
      AppLovinMAX.setTestDeviceAdvertisingIds(_testDeviceAdvertisingIds);
      await AppLovinMAX.initialize(_sdkKey);
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

      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  @override
  AsyncResult<Unit> loadRewardedAd() async {
    try {
      _loadRewardedAdCompleter = Completer<Unit>();
      AppLovinMAX.loadRewardedAd(_rewardedAdUnitId);

      await _loadRewardedAdCompleter.future;

      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  @override
  bool get isRewarded => _isRewarded;

  @override
  AsyncResult<Unit> showRewardedAd() async {
    try {
      final isReady =
          await AppLovinMAX.isRewardedAdReady(_rewardedAdUnitId) ?? false;

      if (!isReady) {
        return Failure(Exception('Rewarded ad is not ready'));
      }

      _isRewarded = false;
      _showRewardedAdCompleter = Completer<Unit>();
      AppLovinMAX.showRewardedAd(_rewardedAdUnitId);

      await _showRewardedAdCompleter.future;

      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  @override
  Result<Unit> showMediationDebugger() {
    try {
      AppLovinMAX.showMediationDebugger();

      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  /// Handles successful ad load.
  void _handleAdLoaded(MaxAd ad) {
    _loadRewardedAdCompleter.complete(unit);
  }

  /// Handles ad load failure.
  void _handleAdLoadFailed(String adUnitId, MaxError error) {
    _loadRewardedAdCompleter.completeError(
      Exception('Failed to load ad: ${error.code.value}'),
    );
  }

  /// Handles ad displayed event.
  void _handleAdDisplayed(MaxAd ad) {}

  /// Handles ad display failure.
  void _handleAdDisplayFailed(MaxAd ad, MaxError error) {
    _showRewardedAdCompleter.completeError(
      Exception('Failed to display ad: ${error.code.value}'),
    );
  }

  /// Handles ad clicked event.
  void _handleAdClicked(MaxAd ad) {}

  /// Handles ad hidden event.
  void _handleAdHidden(MaxAd ad) {
    _showRewardedAdCompleter.complete(unit);
  }

  /// Handles reward received event.
  void _handleAdReceivedReward(MaxAd ad, MaxReward reward) {
    _isRewarded = true;
  }
}
