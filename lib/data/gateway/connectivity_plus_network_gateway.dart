import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_lab/domain/entity/network/connectivity_status.dart';
import 'package:flutter_lab/domain/network/network_gateway.dart';

/// [NetworkGateway] implementation using `connectivity_plus`.
class ConnectivityPlusNetworkGateway implements NetworkGateway {
  ConnectivityPlusNetworkGateway({
    required Connectivity connectivity,
  }) : _connectivity = connectivity;

  final Connectivity _connectivity;

  @override
  Stream<ConnectivityStatus> get onConnectivityChanged =>
      _connectivity.onConnectivityChanged.map(_toConnectivityStatus);

  ConnectivityStatus _toConnectivityStatus(List<ConnectivityResult> results) {
    final connectivities = results.map((result) => result.name).toList();
    log('Connectivity changed: $connectivities');
    return ConnectivityStatus(connectivities: connectivities);
  }
}
