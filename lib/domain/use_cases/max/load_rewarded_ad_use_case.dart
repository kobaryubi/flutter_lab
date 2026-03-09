import 'package:flutter_lab/domain/max/max_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that loads a rewarded ad via the MAX SDK.
class LoadRewardedAdUseCase {
  LoadRewardedAdUseCase({required MaxGateway maxGateway})
    : _maxGateway = maxGateway;

  final MaxGateway _maxGateway;

  /// Loads a rewarded ad.
  ///
  /// Completes with [Unit] when the ad is loaded and ready to be shown.
  AsyncResult<Unit> call() => _maxGateway.loadRewardedAd();
}
