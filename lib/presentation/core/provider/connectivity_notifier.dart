import 'dart:async';

import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/domain/entity/network/connectivity_status.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'connectivity_notifier.g.dart';

/// Manages the global network connectivity status.
///
/// Subscribes to connectivity changes and keeps the state updated
/// across the entire app lifecycle.
@Riverpod(keepAlive: true)
class ConnectivityNotifier extends _$ConnectivityNotifier {
  StreamSubscription<ConnectivityStatus>? _subscription;

  @override
  ConnectivityStatus build() {
    final useCase = ref.read(watchConnectivityUseCaseProvider);
    _subscription = useCase.call().listen(
      (connectivityStatus) => state = connectivityStatus,
    );
    ref.onDispose(() => _subscription?.cancel());
    return const ConnectivityStatus();
  }
}
