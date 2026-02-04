import 'package:flutter_lab/domain/entity/network/connectivity_status.dart';
import 'package:flutter_lab/domain/network/network_repository.dart';

/// Provides a stream of connectivity change events.
class OnConnectivityChangedUseCase {
  OnConnectivityChangedUseCase({
    required NetworkRepository networkRepository,
  }) : _networkRepository = networkRepository;

  final NetworkRepository _networkRepository;

  /// Returns a stream that emits a new status whenever connectivity changes.
  Stream<ConnectivityStatus> call() => _networkRepository.onConnectivityChanged;
}
