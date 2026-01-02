import 'package:flutter/widgets.dart';

/// A reusable error screen with a button.
///
/// The [onButtonTap] callback is invoked when the button is tapped.
/// Each screen can provide its own logic (e.g., retry, navigate back).
///
/// Example:
/// ```dart
/// ErrorScreen(
///   message: 'Failed to load data',
///   onButtonTap: () => viewModel.load(),
/// )
/// ```
class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    required this.onButtonTap,
    this.message,
    super.key,
  });

  /// Factory for cancelled operation.
  factory ErrorScreen.cancelled({
    required VoidCallback onButtonTap,
    Key? key,
  }) => ErrorScreen(
    message: 'Operation was cancelled',
    onButtonTap: onButtonTap,
    key: key,
  );

  /// Factory for unknown error.
  factory ErrorScreen.unknown({required VoidCallback onButtonTap, Key? key}) =>
      ErrorScreen(
        message: 'An unknown error occurred',
        onButtonTap: onButtonTap,
        key: key,
      );

  /// Factory for invalid argument error.
  factory ErrorScreen.invalidArgument({
    required VoidCallback onButtonTap,
    Key? key,
  }) => ErrorScreen(
    message: 'Invalid argument provided',
    onButtonTap: onButtonTap,
    key: key,
  );

  /// Factory for deadline exceeded error.
  factory ErrorScreen.deadlineExceeded({
    required VoidCallback onButtonTap,
    Key? key,
  }) => ErrorScreen(
    message: 'Request timed out',
    onButtonTap: onButtonTap,
    key: key,
  );

  /// Factory for not found error.
  factory ErrorScreen.notFound({required VoidCallback onButtonTap, Key? key}) =>
      ErrorScreen(
        message: 'Resource not found',
        onButtonTap: onButtonTap,
        key: key,
      );

  /// Factory for already exists error.
  factory ErrorScreen.alreadyExists({
    required VoidCallback onButtonTap,
    Key? key,
  }) => ErrorScreen(
    message: 'Resource already exists',
    onButtonTap: onButtonTap,
    key: key,
  );

  /// Factory for permission denied error.
  factory ErrorScreen.permissionDenied({
    required VoidCallback onButtonTap,
    Key? key,
  }) => ErrorScreen(
    message: 'Permission denied',
    onButtonTap: onButtonTap,
    key: key,
  );

  /// Factory for resource exhausted error.
  factory ErrorScreen.resourceExhausted({
    required VoidCallback onButtonTap,
    Key? key,
  }) => ErrorScreen(
    message: 'Resource exhausted',
    onButtonTap: onButtonTap,
    key: key,
  );

  /// Factory for failed precondition error.
  factory ErrorScreen.failedPrecondition({
    required VoidCallback onButtonTap,
    Key? key,
  }) => ErrorScreen(
    message: 'Operation precondition failed',
    onButtonTap: onButtonTap,
    key: key,
  );

  /// Factory for aborted error.
  factory ErrorScreen.aborted({required VoidCallback onButtonTap, Key? key}) =>
      ErrorScreen(
        message: 'Operation was aborted',
        onButtonTap: onButtonTap,
        key: key,
      );

  /// Factory for out of range error.
  factory ErrorScreen.outOfRange({
    required VoidCallback onButtonTap,
    Key? key,
  }) => ErrorScreen(
    message: 'Value out of range',
    onButtonTap: onButtonTap,
    key: key,
  );

  /// Factory for unimplemented error.
  factory ErrorScreen.unimplemented({
    required VoidCallback onButtonTap,
    Key? key,
  }) => ErrorScreen(
    message: 'Feature not implemented',
    onButtonTap: onButtonTap,
    key: key,
  );

  /// Factory for internal error.
  factory ErrorScreen.internal({required VoidCallback onButtonTap, Key? key}) =>
      ErrorScreen(
        message: 'Internal error occurred',
        onButtonTap: onButtonTap,
        key: key,
      );

  /// Factory for unavailable error.
  factory ErrorScreen.unavailable({
    required VoidCallback onButtonTap,
    Key? key,
  }) => ErrorScreen(
    message: 'Service unavailable',
    onButtonTap: onButtonTap,
    key: key,
  );

  /// Factory for data loss error.
  factory ErrorScreen.dataLoss({required VoidCallback onButtonTap, Key? key}) =>
      ErrorScreen(
        message: 'Data loss occurred',
        onButtonTap: onButtonTap,
        key: key,
      );

  /// Factory for unauthenticated error.
  factory ErrorScreen.unauthenticated({
    required VoidCallback onButtonTap,
    Key? key,
  }) => ErrorScreen(
    message: 'Authentication required',
    onButtonTap: onButtonTap,
    key: key,
  );

  /// The error message to display.
  final String? message;

  /// Callback invoked when the button is tapped.
  final VoidCallback onButtonTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: .min,
        children: [
          Text(message ?? 'An error occurred'),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: onButtonTap,
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
