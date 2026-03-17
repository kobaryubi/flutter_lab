import 'package:flutter_lab/domain/adfurikun/adfurikun_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that initializes an Adfurikun interstitial ad instance.
class InitializeAdfurikunInterstitialAdUseCase {
  InitializeAdfurikunInterstitialAdUseCase({
    required AdfurikunGateway adfurikunGateway,
  }) : _adfurikunGateway = adfurikunGateway;

  final AdfurikunGateway _adfurikunGateway;

  /// Initializes an interstitial ad for the given [appId].
  AsyncResult<Unit> call({required String appId}) =>
      _adfurikunGateway.initializeInterstitialAd(appId: appId);
}
