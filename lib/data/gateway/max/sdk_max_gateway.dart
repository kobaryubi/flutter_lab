import 'dart:async';

import 'package:applovin_max/applovin_max.dart';
import 'package:flutter_lab/domain/entity/exception/domain_exception.dart';
import 'package:flutter_lab/domain/max/max_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// AppLovin MAX SDK implementation of [MaxGateway].
class SdkMaxGateway implements MaxGateway {
  /// Creates a [SdkMaxGateway].
  ///
  /// [sdkKey] is the AppLovin SDK key. Pass an empty string for template mode.
  /// [testDeviceAdvertisingIds] is a list of device advertising IDs
  /// for test mode.
  SdkMaxGateway({
    required String sdkKey,
    List<String> testDeviceAdvertisingIds = const [],
    bool isVerboseLoggingEnabled = false,
  }) : _sdkKey = sdkKey,
       _testDeviceAdvertisingIds = testDeviceAdvertisingIds,
       _isVerboseLoggingEnabled = isVerboseLoggingEnabled;

  final String _sdkKey;
  final List<String> _testDeviceAdvertisingIds;
  final bool _isVerboseLoggingEnabled;

  final Map<String, Completer<Unit>> _loadRewardedAdCompleters = {};
  final Map<String, Completer<Unit>> _showRewardedAdCompleters = {};
  final Map<String, bool> _isRewardedMap = {};

  @override
  AsyncResult<Unit> initialize() async {
    try {
      AppLovinMAX.setVerboseLogging(_isVerboseLoggingEnabled);
      AppLovinMAX.setTestDeviceAdvertisingIds(_testDeviceAdvertisingIds);
      await AppLovinMAX.initialize(_sdkKey);
      AppLovinMAX.setRewardedAdListener(
        RewardedAdListener(
          onAdLoadedCallback: _handleRewardedAdLoaded,
          onAdLoadFailedCallback: _handleRewardedAdLoadFailed,
          onAdDisplayedCallback: _handleRewardedAdDisplayed,
          onAdDisplayFailedCallback: _handleRewardedAdDisplayFailed,
          onAdClickedCallback: _handleRewardedAdClicked,
          onAdHiddenCallback: _handleRewardedAdHidden,
          onAdReceivedRewardCallback: _handleRewardedAdReceivedReward,
        ),
      );

      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  @override
  AsyncResult<Unit> loadRewardedAd({required String adUnitId}) async {
    try {
      final isReady = await AppLovinMAX.isRewardedAdReady(adUnitId) ?? false;

      if (isReady) {
        return const Success(unit);
      }

      final completer = Completer<Unit>();
      _loadRewardedAdCompleters[adUnitId] = completer;
      AppLovinMAX.loadRewardedAd(adUnitId);

      await completer.future;

      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  @override
  bool isRewarded({required String adUnitId}) =>
      _isRewardedMap[adUnitId] ?? false;

  @override
  AsyncResult<Unit> showRewardedAd({required String adUnitId}) async {
    try {
      final isReady = await AppLovinMAX.isRewardedAdReady(adUnitId) ?? false;

      if (!isReady) {
        return Failure(Exception('Rewarded ad is not ready'));
      }

      _isRewardedMap[adUnitId] = false;
      final completer = Completer<Unit>();
      _showRewardedAdCompleters[adUnitId] = completer;
      AppLovinMAX.showRewardedAd(adUnitId);

      await completer.future;

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
  void _handleRewardedAdLoaded(MaxAd ad) {
    final completer = _loadRewardedAdCompleters[ad.adUnitId];

    if (completer == null) {
      throw const DomainException.notFound();
    }

    completer.complete(unit);
  }

  /// Handles ad load failure.
  void _handleRewardedAdLoadFailed(String adUnitId, MaxError error) {
    final completer = _loadRewardedAdCompleters[adUnitId];

    if (completer == null) {
      throw const DomainException.notFound();
    }

    completer.completeError(
      Exception('Failed to load ad: ${error.code.value}'),
    );
  }

  /// Handles ad displayed event.
  void _handleRewardedAdDisplayed(MaxAd ad) {}

  /// Handles ad display failure.
  void _handleRewardedAdDisplayFailed(MaxAd ad, MaxError error) {
    final completer = _showRewardedAdCompleters[ad.adUnitId];

    if (completer == null) {
      throw const DomainException.notFound();
    }

    completer.completeError(
      Exception('Failed to display ad: ${error.code.value}'),
    );
  }

  /// Handles ad clicked event.
  void _handleRewardedAdClicked(MaxAd ad) {}

  /// Handles ad hidden event.
  void _handleRewardedAdHidden(MaxAd ad) {
    final completer = _showRewardedAdCompleters[ad.adUnitId];

    if (completer == null) {
      throw const DomainException.notFound();
    }

    completer.complete(unit);
  }

  /// Handles reward received event.
  void _handleRewardedAdReceivedReward(MaxAd ad, MaxReward reward) {
    _isRewardedMap[ad.adUnitId] = true;
  }
}
