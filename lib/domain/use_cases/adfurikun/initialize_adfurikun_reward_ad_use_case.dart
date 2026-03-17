import 'package:flutter_lab/domain/adfurikun/adfurikun_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that initializes an Adfurikun reward ad instance.
class InitializeAdfurikunRewardAdUseCase {
  InitializeAdfurikunRewardAdUseCase({
    required AdfurikunGateway adfurikunGateway,
  }) : _adfurikunGateway = adfurikunGateway;

  final AdfurikunGateway _adfurikunGateway;

  /// Initializes a reward ad for the given [appId].
  AsyncResult<Unit> call({required String appId}) =>
      _adfurikunGateway.initializeRewardAd(appId: appId);
}
