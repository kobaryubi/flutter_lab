import 'package:flutter_lab/domain/adfurikun/adfurikun_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that shows an Adfurikun interstitial ad.
class ShowAdfurikunInterstitialAdUseCase {
  ShowAdfurikunInterstitialAdUseCase({
    required AdfurikunGateway adfurikunGateway,
  }) : _adfurikunGateway = adfurikunGateway;

  final AdfurikunGateway _adfurikunGateway;

  /// Shows an interstitial ad for the given [appId].
  ///
  /// Completes with [Unit] when the ad is closed.
  AsyncResult<Unit> call({required String appId}) =>
      _adfurikunGateway.showInterstitialAd(appId: appId);
}
