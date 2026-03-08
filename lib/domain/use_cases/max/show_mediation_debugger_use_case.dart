import 'package:flutter_lab/domain/max/max_gateway.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that opens the AppLovin mediation debugger.
class ShowMediationDebuggerUseCase {
  ShowMediationDebuggerUseCase({required MaxGateway maxGateway})
    : _maxGateway = maxGateway;

  final MaxGateway _maxGateway;

  /// Opens the mediation debugger overlay.
  Result<Unit> call() => _maxGateway.showMediationDebugger();
}
