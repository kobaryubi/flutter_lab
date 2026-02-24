import 'package:flutter_lab/data/gateway/pigeon_example/messages.g.dart';
import 'package:result_dart/result_dart.dart';

/// Gateway for the Pigeon ExampleHostApi demo.
///
/// Abstracts native host API calls behind a domain-layer interface.
abstract class PigeonExampleGateway {
  /// Returns the host platform language name (e.g. "Swift" or "Kotlin").
  AsyncResult<String> getHostLanguage();

  /// Adds two integers on the native side.
  AsyncResult<int> add({required int a, required int b});

  /// Sends a structured message to the host and returns success.
  AsyncResult<bool> sendMessage({required MessageData message});
}
