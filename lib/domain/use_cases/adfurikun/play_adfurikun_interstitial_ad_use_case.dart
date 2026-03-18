import 'package:flutter_lab/domain/adfurikun/adfurikun_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that plays an Adfurikun interstitial ad.
class PlayAdfurikunInterstitialAdUseCase {
  PlayAdfurikunInterstitialAdUseCase({
    required AdfurikunGateway adfurikunGateway,
  }) : _adfurikunGateway = adfurikunGateway;

  final AdfurikunGateway _adfurikunGateway;

  /// Plays an interstitial ad for the given [appId].
  ///
  /// Completes with [Unit] when the ad is closed.
  AsyncResult<Unit> call({required String appId}) =>
      _adfurikunGateway.playInterstitialAd(appId: appId);
}
