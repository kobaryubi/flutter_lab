import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_lab/domain/entity/network/connectivity_status.dart';
import 'package:flutter_lab/domain/network/network_repository.dart';
import 'package:result_dart/result_dart.dart';

/// [NetworkRepository] implementation using `connectivity_plus`.
class ConnectivityPlusNetworkRepository implements NetworkRepository {
  ConnectivityPlusNetworkRepository({
    required Connectivity connectivity,
  }) : _connectivity = connectivity;

  final Connectivity _connectivity;

  @override
  AsyncResult<ConnectivityStatus> checkConnectivity() async {
    try {
      final results = await _connectivity.checkConnectivity();
      final connectivities = results.map((result) => result.name).toList();
      return ConnectivityStatus(connectivities: connectivities).toSuccess();
    } on Exception catch (exception) {
      return exception.toFailure();
    }
  }
}
