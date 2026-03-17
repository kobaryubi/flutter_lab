import 'dart:async';

import 'package:adfurikunsdk/interstitial.dart';
import 'package:flutter_lab/domain/adfurikun/adfurikun_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Adfurikun SDK implementation of [AdfurikunGateway].
class SdkAdfurikunGateway implements AdfurikunGateway {
  final Map<String, AdfurikunInterstitial> _interstitialAds = {};
  final Map<String, Completer<Unit>> _loadCompleters = {};
  final Map<String, Completer<Unit>> _showCompleters = {};

  @override
  AsyncResult<Unit> initializeInterstitialAd({required String appId}) async {
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

      _loadCompleters[appId] = Completer<Unit>();
      interstitial.load();

      await _loadCompleters[appId]!.future;

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

      _showCompleters[appId] = Completer<Unit>();
      interstitial.play();

      await _showCompleters[appId]!.future;

      return const Success(unit);
    } on Exception catch (exception) {
      return Failure(exception);
    }
  }

  @override
  void dispose() {
    for (final interstitial in _interstitialAds.values) {
      interstitial
        ..destroy()
        ..listener = null;
    }

    _interstitialAds.clear();
    _loadCompleters.clear();
    _showCompleters.clear();
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

  /// Creates a listener for interstitial ad callbacks.
  AdfurikunInterstitialListener _createInterstitialListener(String appId) =>
      (
        callback,
        appId,
        adNetworkKey,
        errorCode,
        errorMessage,
        adNetworkErrorList,
      ) {
        switch (callback) {
          case .onPrepareSuccess:
            _loadCompleters[appId]?.complete(unit);

          case .onPrepareFailure:
            _loadCompleters[appId]?.completeError(
              Exception('Failed to load interstitial ad: $appId'),
            );

          case .onStartPlaying:
          case .onFinishedPlaying:
            break;

          case .onAdClose:
            _showCompleters[appId]?.complete(unit);

          case .onFailedPlaying:
            _showCompleters[appId]?.completeError(
              Exception('Failed to play interstitial ad: $appId'),
            );

          case null:
            break;
        }
      };
}
