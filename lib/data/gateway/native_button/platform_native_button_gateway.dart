import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_lab/data/platform/method_channel_names.dart';
import 'package:flutter_lab/domain/native_button/native_button_gateway.dart';

/// Implementation of [NativeButtonGateway] using native platform channel.
class PlatformNativeButtonGateway implements NativeButtonGateway {
  PlatformNativeButtonGateway() {
    _channel.setMethodCallHandler(_handleMethodCall);
  }

  static const _channel = MethodChannel(MethodChannelNames.nativeButton);

  final _tapController = StreamController<void>.broadcast();

  @override
  Stream<void> get onTap => _tapController.stream;

  /// Handles incoming method calls from the native button.
  Future<void> _handleMethodCall(MethodCall call) async {
    if (call.method == 'onTap') {
      _tapController.add(null);
    }
  }
}
