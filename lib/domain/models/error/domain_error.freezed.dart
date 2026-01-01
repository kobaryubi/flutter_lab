// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'domain_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DomainError {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DomainError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DomainError()';
}


}

/// @nodoc
class $DomainErrorCopyWith<$Res>  {
$DomainErrorCopyWith(DomainError _, $Res Function(DomainError) __);
}


/// Adds pattern-matching-related methods to [DomainError].
extension DomainErrorPatterns on DomainError {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Cancelled value)?  cancelled,TResult Function( Unknown value)?  unknown,TResult Function( InvalidArgument value)?  invalidArgument,TResult Function( DeadlineExceeded value)?  deadlineExceeded,TResult Function( NotFound value)?  notFound,TResult Function( AlreadyExists value)?  alreadyExists,TResult Function( PermissionDenied value)?  permissionDenied,TResult Function( ResourceExhausted value)?  resourceExhausted,TResult Function( FailedPrecondition value)?  failedPrecondition,TResult Function( Aborted value)?  aborted,TResult Function( OutOfRange value)?  outOfRange,TResult Function( Unimplemented value)?  unimplemented,TResult Function( Internal value)?  internal,TResult Function( Unavailable value)?  unavailable,TResult Function( DataLoss value)?  dataLoss,TResult Function( Unauthenticated value)?  unauthenticated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Cancelled() when cancelled != null:
return cancelled(_that);case Unknown() when unknown != null:
return unknown(_that);case InvalidArgument() when invalidArgument != null:
return invalidArgument(_that);case DeadlineExceeded() when deadlineExceeded != null:
return deadlineExceeded(_that);case NotFound() when notFound != null:
return notFound(_that);case AlreadyExists() when alreadyExists != null:
return alreadyExists(_that);case PermissionDenied() when permissionDenied != null:
return permissionDenied(_that);case ResourceExhausted() when resourceExhausted != null:
return resourceExhausted(_that);case FailedPrecondition() when failedPrecondition != null:
return failedPrecondition(_that);case Aborted() when aborted != null:
return aborted(_that);case OutOfRange() when outOfRange != null:
return outOfRange(_that);case Unimplemented() when unimplemented != null:
return unimplemented(_that);case Internal() when internal != null:
return internal(_that);case Unavailable() when unavailable != null:
return unavailable(_that);case DataLoss() when dataLoss != null:
return dataLoss(_that);case Unauthenticated() when unauthenticated != null:
return unauthenticated(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Cancelled value)  cancelled,required TResult Function( Unknown value)  unknown,required TResult Function( InvalidArgument value)  invalidArgument,required TResult Function( DeadlineExceeded value)  deadlineExceeded,required TResult Function( NotFound value)  notFound,required TResult Function( AlreadyExists value)  alreadyExists,required TResult Function( PermissionDenied value)  permissionDenied,required TResult Function( ResourceExhausted value)  resourceExhausted,required TResult Function( FailedPrecondition value)  failedPrecondition,required TResult Function( Aborted value)  aborted,required TResult Function( OutOfRange value)  outOfRange,required TResult Function( Unimplemented value)  unimplemented,required TResult Function( Internal value)  internal,required TResult Function( Unavailable value)  unavailable,required TResult Function( DataLoss value)  dataLoss,required TResult Function( Unauthenticated value)  unauthenticated,}){
final _that = this;
switch (_that) {
case Cancelled():
return cancelled(_that);case Unknown():
return unknown(_that);case InvalidArgument():
return invalidArgument(_that);case DeadlineExceeded():
return deadlineExceeded(_that);case NotFound():
return notFound(_that);case AlreadyExists():
return alreadyExists(_that);case PermissionDenied():
return permissionDenied(_that);case ResourceExhausted():
return resourceExhausted(_that);case FailedPrecondition():
return failedPrecondition(_that);case Aborted():
return aborted(_that);case OutOfRange():
return outOfRange(_that);case Unimplemented():
return unimplemented(_that);case Internal():
return internal(_that);case Unavailable():
return unavailable(_that);case DataLoss():
return dataLoss(_that);case Unauthenticated():
return unauthenticated(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Cancelled value)?  cancelled,TResult? Function( Unknown value)?  unknown,TResult? Function( InvalidArgument value)?  invalidArgument,TResult? Function( DeadlineExceeded value)?  deadlineExceeded,TResult? Function( NotFound value)?  notFound,TResult? Function( AlreadyExists value)?  alreadyExists,TResult? Function( PermissionDenied value)?  permissionDenied,TResult? Function( ResourceExhausted value)?  resourceExhausted,TResult? Function( FailedPrecondition value)?  failedPrecondition,TResult? Function( Aborted value)?  aborted,TResult? Function( OutOfRange value)?  outOfRange,TResult? Function( Unimplemented value)?  unimplemented,TResult? Function( Internal value)?  internal,TResult? Function( Unavailable value)?  unavailable,TResult? Function( DataLoss value)?  dataLoss,TResult? Function( Unauthenticated value)?  unauthenticated,}){
final _that = this;
switch (_that) {
case Cancelled() when cancelled != null:
return cancelled(_that);case Unknown() when unknown != null:
return unknown(_that);case InvalidArgument() when invalidArgument != null:
return invalidArgument(_that);case DeadlineExceeded() when deadlineExceeded != null:
return deadlineExceeded(_that);case NotFound() when notFound != null:
return notFound(_that);case AlreadyExists() when alreadyExists != null:
return alreadyExists(_that);case PermissionDenied() when permissionDenied != null:
return permissionDenied(_that);case ResourceExhausted() when resourceExhausted != null:
return resourceExhausted(_that);case FailedPrecondition() when failedPrecondition != null:
return failedPrecondition(_that);case Aborted() when aborted != null:
return aborted(_that);case OutOfRange() when outOfRange != null:
return outOfRange(_that);case Unimplemented() when unimplemented != null:
return unimplemented(_that);case Internal() when internal != null:
return internal(_that);case Unavailable() when unavailable != null:
return unavailable(_that);case DataLoss() when dataLoss != null:
return dataLoss(_that);case Unauthenticated() when unauthenticated != null:
return unauthenticated(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  cancelled,TResult Function()?  unknown,TResult Function()?  invalidArgument,TResult Function()?  deadlineExceeded,TResult Function()?  notFound,TResult Function()?  alreadyExists,TResult Function()?  permissionDenied,TResult Function()?  resourceExhausted,TResult Function()?  failedPrecondition,TResult Function()?  aborted,TResult Function()?  outOfRange,TResult Function()?  unimplemented,TResult Function()?  internal,TResult Function()?  unavailable,TResult Function()?  dataLoss,TResult Function()?  unauthenticated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Cancelled() when cancelled != null:
return cancelled();case Unknown() when unknown != null:
return unknown();case InvalidArgument() when invalidArgument != null:
return invalidArgument();case DeadlineExceeded() when deadlineExceeded != null:
return deadlineExceeded();case NotFound() when notFound != null:
return notFound();case AlreadyExists() when alreadyExists != null:
return alreadyExists();case PermissionDenied() when permissionDenied != null:
return permissionDenied();case ResourceExhausted() when resourceExhausted != null:
return resourceExhausted();case FailedPrecondition() when failedPrecondition != null:
return failedPrecondition();case Aborted() when aborted != null:
return aborted();case OutOfRange() when outOfRange != null:
return outOfRange();case Unimplemented() when unimplemented != null:
return unimplemented();case Internal() when internal != null:
return internal();case Unavailable() when unavailable != null:
return unavailable();case DataLoss() when dataLoss != null:
return dataLoss();case Unauthenticated() when unauthenticated != null:
return unauthenticated();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  cancelled,required TResult Function()  unknown,required TResult Function()  invalidArgument,required TResult Function()  deadlineExceeded,required TResult Function()  notFound,required TResult Function()  alreadyExists,required TResult Function()  permissionDenied,required TResult Function()  resourceExhausted,required TResult Function()  failedPrecondition,required TResult Function()  aborted,required TResult Function()  outOfRange,required TResult Function()  unimplemented,required TResult Function()  internal,required TResult Function()  unavailable,required TResult Function()  dataLoss,required TResult Function()  unauthenticated,}) {final _that = this;
switch (_that) {
case Cancelled():
return cancelled();case Unknown():
return unknown();case InvalidArgument():
return invalidArgument();case DeadlineExceeded():
return deadlineExceeded();case NotFound():
return notFound();case AlreadyExists():
return alreadyExists();case PermissionDenied():
return permissionDenied();case ResourceExhausted():
return resourceExhausted();case FailedPrecondition():
return failedPrecondition();case Aborted():
return aborted();case OutOfRange():
return outOfRange();case Unimplemented():
return unimplemented();case Internal():
return internal();case Unavailable():
return unavailable();case DataLoss():
return dataLoss();case Unauthenticated():
return unauthenticated();}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  cancelled,TResult? Function()?  unknown,TResult? Function()?  invalidArgument,TResult? Function()?  deadlineExceeded,TResult? Function()?  notFound,TResult? Function()?  alreadyExists,TResult? Function()?  permissionDenied,TResult? Function()?  resourceExhausted,TResult? Function()?  failedPrecondition,TResult? Function()?  aborted,TResult? Function()?  outOfRange,TResult? Function()?  unimplemented,TResult? Function()?  internal,TResult? Function()?  unavailable,TResult? Function()?  dataLoss,TResult? Function()?  unauthenticated,}) {final _that = this;
switch (_that) {
case Cancelled() when cancelled != null:
return cancelled();case Unknown() when unknown != null:
return unknown();case InvalidArgument() when invalidArgument != null:
return invalidArgument();case DeadlineExceeded() when deadlineExceeded != null:
return deadlineExceeded();case NotFound() when notFound != null:
return notFound();case AlreadyExists() when alreadyExists != null:
return alreadyExists();case PermissionDenied() when permissionDenied != null:
return permissionDenied();case ResourceExhausted() when resourceExhausted != null:
return resourceExhausted();case FailedPrecondition() when failedPrecondition != null:
return failedPrecondition();case Aborted() when aborted != null:
return aborted();case OutOfRange() when outOfRange != null:
return outOfRange();case Unimplemented() when unimplemented != null:
return unimplemented();case Internal() when internal != null:
return internal();case Unavailable() when unavailable != null:
return unavailable();case DataLoss() when dataLoss != null:
return dataLoss();case Unauthenticated() when unauthenticated != null:
return unauthenticated();case _:
  return null;

}
}

}

/// @nodoc


class Cancelled implements DomainError {
  const Cancelled();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cancelled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DomainError.cancelled()';
}


}




/// @nodoc


class Unknown implements DomainError {
  const Unknown();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unknown);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DomainError.unknown()';
}


}




/// @nodoc


class InvalidArgument implements DomainError {
  const InvalidArgument();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidArgument);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DomainError.invalidArgument()';
}


}




/// @nodoc


class DeadlineExceeded implements DomainError {
  const DeadlineExceeded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeadlineExceeded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DomainError.deadlineExceeded()';
}


}




/// @nodoc


class NotFound implements DomainError {
  const NotFound();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotFound);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DomainError.notFound()';
}


}




/// @nodoc


class AlreadyExists implements DomainError {
  const AlreadyExists();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlreadyExists);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DomainError.alreadyExists()';
}


}




/// @nodoc


class PermissionDenied implements DomainError {
  const PermissionDenied();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionDenied);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DomainError.permissionDenied()';
}


}




/// @nodoc


class ResourceExhausted implements DomainError {
  const ResourceExhausted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResourceExhausted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DomainError.resourceExhausted()';
}


}




/// @nodoc


class FailedPrecondition implements DomainError {
  const FailedPrecondition();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FailedPrecondition);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DomainError.failedPrecondition()';
}


}




/// @nodoc


class Aborted implements DomainError {
  const Aborted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Aborted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DomainError.aborted()';
}


}




/// @nodoc


class OutOfRange implements DomainError {
  const OutOfRange();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OutOfRange);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DomainError.outOfRange()';
}


}




/// @nodoc


class Unimplemented implements DomainError {
  const Unimplemented();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unimplemented);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DomainError.unimplemented()';
}


}




/// @nodoc


class Internal implements DomainError {
  const Internal();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Internal);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DomainError.internal()';
}


}




/// @nodoc


class Unavailable implements DomainError {
  const Unavailable();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unavailable);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DomainError.unavailable()';
}


}




/// @nodoc


class DataLoss implements DomainError {
  const DataLoss();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataLoss);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DomainError.dataLoss()';
}


}




/// @nodoc


class Unauthenticated implements DomainError {
  const Unauthenticated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unauthenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DomainError.unauthenticated()';
}


}




// dart format on
