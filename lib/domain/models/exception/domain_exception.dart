import 'package:freezed_annotation/freezed_annotation.dart';

part 'domain_exception.freezed.dart';

/// Domain exception following gRPC status code pattern.
@freezed
sealed class DomainException with _$DomainException {
  /// The operation was cancelled.
  const factory DomainException.cancelled() = Cancelled;

  /// Unknown exception.
  const factory DomainException.unknown() = Unknown;

  /// Client specified an invalid argument.
  const factory DomainException.invalidArgument() = InvalidArgument;

  /// Deadline expired before operation could complete.
  const factory DomainException.deadlineExceeded() = DeadlineExceeded;

  /// Some requested entity was not found.
  const factory DomainException.notFound() = NotFound;

  /// Entity that we attempted to create already exists.
  const factory DomainException.alreadyExists() = AlreadyExists;

  /// Caller does not have permission to execute the operation.
  const factory DomainException.permissionDenied() = PermissionDenied;

  /// Some resource has been exhausted.
  const factory DomainException.resourceExhausted() = ResourceExhausted;

  /// Operation rejected because the system is not in a state required.
  const factory DomainException.failedPrecondition() = FailedPrecondition;

  /// Operation was aborted.
  const factory DomainException.aborted() = Aborted;

  /// Operation was attempted past the valid range.
  const factory DomainException.outOfRange() = OutOfRange;

  /// Operation is not implemented or not supported.
  const factory DomainException.unimplemented() = Unimplemented;

  /// Internal exception.
  const factory DomainException.internal() = Internal;

  /// Service is currently unavailable.
  const factory DomainException.unavailable() = Unavailable;

  /// Unrecoverable data loss or corruption.
  const factory DomainException.dataLoss() = DataLoss;

  /// Request does not have valid authentication credentials.
  const factory DomainException.unauthenticated() = Unauthenticated;
}
