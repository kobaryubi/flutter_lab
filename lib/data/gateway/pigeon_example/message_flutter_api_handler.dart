import 'package:flutter_lab/data/gateway/pigeon/pigeon_api.g.dart';

/// Dart-side implementation of [MessageFlutterApi].
///
/// Handles calls from the native platform and notifies via [onCalled] callback.
class MessageFlutterApiHandler implements MessageFlutterApi {
  /// Creates a handler with a callback that is invoked when native calls
  /// [flutterMethod].
  MessageFlutterApiHandler({required this.onCalled});

  /// Callback invoked with the result when native calls [flutterMethod].
  final void Function(String result) onCalled;

  @override
  String flutterMethod(String? aString) {
    final result = aString ?? '';
    onCalled(result);
    return result;
  }
}
