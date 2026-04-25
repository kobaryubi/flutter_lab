/// Gateway for application logging.
///
/// Abstracts the logging SDK behind an application-layer interface so
/// that use cases, repositories, and UI code never depend on a concrete
/// logger implementation.
///
/// Methods are synchronous and return `void` because logging is a
/// fire-and-forget concern — a logger failure must not propagate into
/// business logic or force callers to await results.
abstract class LoggerGateway {
  /// Logs a debug-level message for development-time diagnostics.
  void debug(
    String message, {
    Object? error,
    StackTrace? stackTrace,
  });

  /// Logs an info-level message for notable, expected events.
  void info(
    String message, {
    Object? error,
    StackTrace? stackTrace,
  });

  /// Logs a warning-level message for recoverable anomalies.
  void warning(
    String message, {
    Object? error,
    StackTrace? stackTrace,
  });

  /// Logs an error-level message for failures that require attention.
  void error(
    String message, {
    Object? error,
    StackTrace? stackTrace,
  });

  /// Handles a caught exception, producing a richer error log entry than
  /// [error] (the underlying SDK can classify it as an error or exception
  /// and format the stack trace accordingly).
  ///
  /// Use this from `catch` blocks; use [error] for ad-hoc error messages
  /// that don't have an associated exception object.
  void handle({
    required Object exception,
    StackTrace? stackTrace,
    String? message,
  });
}
