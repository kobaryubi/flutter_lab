import 'package:flutter_lab/domain/adfurikun/adfurikun_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that loads an Adfurikun interstitial ad.
class LoadAdfurikunInterstitialAdUseCase {
  LoadAdfurikunInterstitialAdUseCase({
    required AdfurikunGateway adfurikunGateway,
  }) : _adfurikunGateway = adfurikunGateway;

  final AdfurikunGateway _adfurikunGateway;

  /// Loads an interstitial ad for the given [appId].
  ///
  /// Completes with [Unit] when the ad is loaded and ready to be shown.
  AsyncResult<Unit> call({required String appId}) =>
      _adfurikunGateway.loadInterstitialAd(appId: appId);
}
