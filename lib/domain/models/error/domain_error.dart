import 'package:freezed_annotation/freezed_annotation.dart';

part 'domain_error.freezed.dart';

/// Domain error following gRPC status code pattern.
@freezed
sealed class DomainError with _$DomainError {
  /// The operation was cancelled.
  const factory DomainError.cancelled() = Cancelled;

  /// Unknown error.
  const factory DomainError.unknown() = Unknown;

  /// Client specified an invalid argument.
  const factory DomainError.invalidArgument() = InvalidArgument;

  /// Deadline expired before operation could complete.
  const factory DomainError.deadlineExceeded() = DeadlineExceeded;

  /// Some requested entity was not found.
  const factory DomainError.notFound() = NotFound;

  /// Entity that we attempted to create already exists.
  const factory DomainError.alreadyExists() = AlreadyExists;

  /// Caller does not have permission to execute the operation.
  const factory DomainError.permissionDenied() = PermissionDenied;

  /// Some resource has been exhausted.
  const factory DomainError.resourceExhausted() = ResourceExhausted;

  /// Operation rejected because the system is not in a state required.
  const factory DomainError.failedPrecondition() = FailedPrecondition;

  /// Operation was aborted.
  const factory DomainError.aborted() = Aborted;

  /// Operation was attempted past the valid range.
  const factory DomainError.outOfRange() = OutOfRange;

  /// Operation is not implemented or not supported.
  const factory DomainError.unimplemented() = Unimplemented;

  /// Internal errors.
  const factory DomainError.internal() = Internal;

  /// Service is currently unavailable.
  const factory DomainError.unavailable() = Unavailable;

  /// Unrecoverable data loss or corruption.
  const factory DomainError.dataLoss() = DataLoss;

  /// Request does not have valid authentication credentials.
  const factory DomainError.unauthenticated() = Unauthenticated;
}
