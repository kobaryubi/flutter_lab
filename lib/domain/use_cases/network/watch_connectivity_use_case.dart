import 'package:flutter_lab/domain/entity/network/connectivity_status.dart';
import 'package:flutter_lab/domain/network/network_gateway.dart';

/// Provides a stream of connectivity change events.
class WatchConnectivityUseCase {
  WatchConnectivityUseCase({
    required NetworkGateway networkGateway,
  }) : _networkGateway = networkGateway;

  final NetworkGateway _networkGateway;

  /// Returns a stream that emits a new status whenever connectivity changes.
  Stream<ConnectivityStatus> call() => _networkGateway.onConnectivityChanged;
}
