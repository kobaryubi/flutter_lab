import 'dart:async';

import 'package:adfurikunsdk/adfurikun.dart';
import 'package:adfurikunsdk/interstitial.dart';
import 'package:adfurikunsdk/reward.dart';
import 'package:flutter_lab/domain/adfurikun/adfurikun_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Adfurikun SDK implementation of [AdfurikunGateway].
class SdkAdfurikunGateway implements AdfurikunGateway {
  /// Creates a gateway with test mode and debug mode enabled.
  SdkAdfurikunGateway() {
    AdfurikunSdk.setTestMode(true);
    AdfurikunSdk.setDebugMode(true);
  }

  final Map<String, AdfurikunInterstitial> _interstitialAds = {};
  final Map<String, AdfurikunReward> _rewardAds = {};
  final Map<String, Completer<Unit>> _interstitialLoadCompleters = {};
  final Map<String, Completer<Unit>> _interstitialShowCompleters = {};
  final Map<String, Completer<Unit>> _rewardLoadCompleters = {};
  final Map<String, Completer<Unit>> _rewardShowCompleters = {};
  final Map<String, bool> _rewardEarnedMap = {};

  @override
  AsyncResult<Unit> initializeInterstitialAd({required String appId}) async {
    if (_isInterstitialAdPlaying(appId)) {
      return Failure(Exception('Interstitial ad is currently playing: $appId'));
    }

    final existingAd = _interstitialAds[appId];

    if (existingAd != null && await existingAd.isPrepared()) {
      return const Success(unit);
    }

    try {
      final interstitial = AdfurikunInterstitial(appId)
        ..listener = _createInterstitialListener(appId);

      _interstitialAds[appId] = interstitial;

      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  @override
  AsyncResult<Unit> loadInterstitialAd({required String appId}) async {
    try {
      final interstitial = _getInterstitial(appId);

      if (await interstitial.isPrepared()) {
        return const Success(unit);
      }

      final completer = Completer<Unit>();

      _interstitialLoadCompleters[appId] = completer;
      interstitial.loadWithTimeout(10);

      await completer.future;

      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  @override
  AsyncResult<Unit> showInterstitialAd({required String appId}) async {
    try {
      final interstitial = _getInterstitial(appId);

      final isPrepared = await interstitial.isPrepared();

      if (!isPrepared) {
        return Failure(Exception('Interstitial ad is not prepared: $appId'));
      }

      final completer = Completer<Unit>();

      _interstitialShowCompleters[appId] = completer;
      interstitial.play();

      await completer.future;

      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  @override
  AsyncResult<Unit> initializeRewardAd({required String appId}) async {
    if (_isRewardAdPlaying(appId)) {
      return Failure(Exception('Reward ad is currently playing: $appId'));
    }

    final existingAd = _rewardAds[appId];

    if (existingAd != null && await existingAd.isPrepared()) {
      return const Success(unit);
    }

    try {
      final reward = AdfurikunReward(appId)
        ..listener = _createRewardListener(appId);

      _rewardAds[appId] = reward;

      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  @override
  AsyncResult<Unit> loadRewardAd({required String appId}) async {
    try {
      final reward = _getReward(appId);

      if (await reward.isPrepared()) {
        return const Success(unit);
      }

      final completer = Completer<Unit>();

      _rewardLoadCompleters[appId] = completer;
      reward.loadWithTimeout(10);

      await completer.future;

      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  @override
  AsyncResult<Unit> showRewardAd({required String appId}) async {
    try {
      final reward = _getReward(appId);

      final isPrepared = await reward.isPrepared();

      if (!isPrepared) {
        return Failure(Exception('Reward ad is not prepared: $appId'));
      }

      final completer = Completer<Unit>();

      _rewardEarnedMap[appId] = false;
      _rewardShowCompleters[appId] = completer;
      reward.play();

      await completer.future;

      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  @override
  bool isRewardEarned({required String appId}) =>
      _rewardEarnedMap[appId] ?? false;

  @override
  void dispose() {
    for (final interstitial in _interstitialAds.values) {
      interstitial
        ..destroy()
        ..listener = null;
    }

    for (final reward in _rewardAds.values) {
      reward
        ..destroy()
        ..listener = null;
    }

    _interstitialAds.clear();
    _rewardAds.clear();
    _interstitialLoadCompleters.clear();
    _interstitialShowCompleters.clear();
    _rewardLoadCompleters.clear();
    _rewardShowCompleters.clear();
    _rewardEarnedMap.clear();
  }

  /// Returns the interstitial ad instance for the given app ID.
  ///
  /// Throws if the app ID has not been initialized.
  AdfurikunInterstitial _getInterstitial(String appId) {
    final interstitial = _interstitialAds[appId];

    if (interstitial == null) {
      throw Exception('Interstitial ad not initialized: $appId');
    }

    return interstitial;
  }

  /// Returns the reward ad instance for the given app ID.
  ///
  /// Throws if the app ID has not been initialized.
  AdfurikunReward _getReward(String appId) {
    final reward = _rewardAds[appId];

    if (reward == null) {
      throw Exception('Reward ad not initialized: $appId');
    }

    return reward;
  }

  /// Whether an interstitial ad with the given app ID is currently playing.
  bool _isInterstitialAdPlaying(String appId) {
    final completer = _interstitialShowCompleters[appId];

    return completer != null && !completer.isCompleted;
  }

  /// Whether a reward ad with the given app ID is currently playing.
  bool _isRewardAdPlaying(String appId) {
    final completer = _rewardShowCompleters[appId];

    return completer != null && !completer.isCompleted;
  }

  /// Creates a listener for interstitial ad callbacks.
  AdfurikunInterstitialListener _createInterstitialListener(String appId) =>
      (
        callback,
        _,
        adNetworkKey,
        errorCode,
        errorMessage,
        adNetworkErrorList,
      ) {
        switch (callback) {
          case .onPrepareSuccess:
            _interstitialLoadCompleters[appId]?.complete(unit);

          case .onPrepareFailure:
            _interstitialLoadCompleters[appId]?.completeError(
              Exception('Failed to load interstitial ad: $appId'),
            );

          case .onStartPlaying:
          case .onFinishedPlaying:
            break;

          case .onAdClose:
            _interstitialShowCompleters[appId]?.complete(unit);

          case .onFailedPlaying:
            _interstitialShowCompleters[appId]?.completeError(
              Exception('Failed to play interstitial ad: $appId'),
            );

          case null:
            break;
        }
      };

  /// Creates a listener for reward ad callbacks.
  AdfurikunRewardListener _createRewardListener(String appId) =>
      (
        callback,
        _,
        adNetworkKey,
        errorCode,
        errorMessage,
        adNetworkErrorList,
        isRewarded,
      ) {
        switch (callback) {
          case .onPrepareSuccess:
            _rewardLoadCompleters[appId]?.complete(unit);

          case .onPrepareFailure:
            _rewardLoadCompleters[appId]?.completeError(
              Exception('Failed to load reward ad: $appId'),
            );

          case .onStartPlaying:
            break;

          case .onFinishedPlaying:
            _rewardEarnedMap[appId] = isRewarded ?? false;

          case .onAdClose:
            _rewardShowCompleters[appId]?.complete(unit);

          case .onFailedPlaying:
            _rewardShowCompleters[appId]?.completeError(
              Exception('Failed to play reward ad: $appId'),
            );

          case null:
            break;
        }
      };
}
