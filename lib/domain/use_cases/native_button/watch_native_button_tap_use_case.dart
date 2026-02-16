import 'package:flutter_lab/domain/native_button/native_button_gateway.dart';

/// Provides a stream of native button tap events.
class WatchNativeButtonTapUseCase {
  WatchNativeButtonTapUseCase({
    required NativeButtonGateway nativeButtonGateway,
  }) : _nativeButtonGateway = nativeButtonGateway;

  final NativeButtonGateway _nativeButtonGateway;

  /// Returns a stream that emits on each native button tap.
  Stream<void> call() => _nativeButtonGateway.onTap;
}
