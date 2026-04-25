import 'package:flutter_lab/application/logger/logger_gateway.dart';
import 'package:talker_flutter/talker_flutter.dart';

/// Talker implementation of [LoggerGateway].
class TalkerLoggerGateway implements LoggerGateway {
  /// Creates a [TalkerLoggerGateway] backed by the given [talker] instance.
  ///
  /// The [talker] instance is injected so it can be shared with other
  /// Talker integrations (e.g. `talker_dio_logger`, `talker_riverpod_logger`).
  TalkerLoggerGateway({required Talker talker}) : _talker = talker;

  final Talker _talker;

  @override
  void debug(
    String message, {
    Object? error,
    StackTrace? stackTrace,
  }) {
    _talker.debug(message, error, stackTrace);
  }

  @override
  void info(
    String message, {
    Object? error,
    StackTrace? stackTrace,
  }) {
    _talker.info(message, error, stackTrace);
  }

  @override
  void warning(
    String message, {
    Object? error,
    StackTrace? stackTrace,
  }) {
    _talker.warning(message, error, stackTrace);
  }

  @override
  void error(
    String message, {
    Object? error,
    StackTrace? stackTrace,
  }) {
    _talker.error(message, error, stackTrace);
  }

  @override
  void handle({
    required Object exception,
    StackTrace? stackTrace,
    String? message,
  }) {
    _talker.handle(exception, stackTrace, message);
  }
}
