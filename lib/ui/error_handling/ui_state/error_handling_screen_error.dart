import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_handling_screen_error.freezed.dart';

/// Presentation-layer error type for the error-handling sample screen.
///
/// The ViewModel translates domain exceptions into one of these variants so
/// the view can decide which error widget to render without importing the
/// domain layer.
@freezed
sealed class ErrorHandlingScreenError
    with _$ErrorHandlingScreenError
    implements Exception {
  /// The requested resource was not found.
  const factory ErrorHandlingScreenError.notFound() = NotFoundError;

  /// The caller does not have permission for the operation.
  const factory ErrorHandlingScreenError.permissionDenied() =
      PermissionDeniedError;

  /// The service is unavailable (e.g. network/offline).
  const factory ErrorHandlingScreenError.unavailable() = UnavailableError;

  /// Any other error not specifically handled by this screen.
  const factory ErrorHandlingScreenError.generic() = GenericError;
}
