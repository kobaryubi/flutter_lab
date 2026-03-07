import 'package:flutter_lab/domain/max/max_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that initializes the AppLovin MAX SDK.
class InitializeMaxUseCase {
  InitializeMaxUseCase({required MaxGateway maxGateway})
    : _maxGateway = maxGateway;

  final MaxGateway _maxGateway;

  /// Initializes the MAX SDK.
  AsyncResult<Unit> call() => _maxGateway.initialize();
}
