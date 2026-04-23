// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_handling_screen_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ErrorHandlingScreenError {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorHandlingScreenError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ErrorHandlingScreenError()';
}


}

/// @nodoc
class $ErrorHandlingScreenErrorCopyWith<$Res>  {
$ErrorHandlingScreenErrorCopyWith(ErrorHandlingScreenError _, $Res Function(ErrorHandlingScreenError) __);
}


/// Adds pattern-matching-related methods to [ErrorHandlingScreenError].
extension ErrorHandlingScreenErrorPatterns on ErrorHandlingScreenError {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NotFoundError value)?  notFound,TResult Function( PermissionDeniedError value)?  permissionDenied,TResult Function( UnavailableError value)?  unavailable,TResult Function( GenericError value)?  generic,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NotFoundError() when notFound != null:
return notFound(_that);case PermissionDeniedError() when permissionDenied != null:
return permissionDenied(_that);case UnavailableError() when unavailable != null:
return unavailable(_that);case GenericError() when generic != null:
return generic(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NotFoundError value)  notFound,required TResult Function( PermissionDeniedError value)  permissionDenied,required TResult Function( UnavailableError value)  unavailable,required TResult Function( GenericError value)  generic,}){
final _that = this;
switch (_that) {
case NotFoundError():
return notFound(_that);case PermissionDeniedError():
return permissionDenied(_that);case UnavailableError():
return unavailable(_that);case GenericError():
return generic(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NotFoundError value)?  notFound,TResult? Function( PermissionDeniedError value)?  permissionDenied,TResult? Function( UnavailableError value)?  unavailable,TResult? Function( GenericError value)?  generic,}){
final _that = this;
switch (_that) {
case NotFoundError() when notFound != null:
return notFound(_that);case PermissionDeniedError() when permissionDenied != null:
return permissionDenied(_that);case UnavailableError() when unavailable != null:
return unavailable(_that);case GenericError() when generic != null:
return generic(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  notFound,TResult Function()?  permissionDenied,TResult Function()?  unavailable,TResult Function()?  generic,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NotFoundError() when notFound != null:
return notFound();case PermissionDeniedError() when permissionDenied != null:
return permissionDenied();case UnavailableError() when unavailable != null:
return unavailable();case GenericError() when generic != null:
return generic();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  notFound,required TResult Function()  permissionDenied,required TResult Function()  unavailable,required TResult Function()  generic,}) {final _that = this;
switch (_that) {
case NotFoundError():
return notFound();case PermissionDeniedError():
return permissionDenied();case UnavailableError():
return unavailable();case GenericError():
return generic();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  notFound,TResult? Function()?  permissionDenied,TResult? Function()?  unavailable,TResult? Function()?  generic,}) {final _that = this;
switch (_that) {
case NotFoundError() when notFound != null:
return notFound();case PermissionDeniedError() when permissionDenied != null:
return permissionDenied();case UnavailableError() when unavailable != null:
return unavailable();case GenericError() when generic != null:
return generic();case _:
  return null;

}
}

}

/// @nodoc


class NotFoundError implements ErrorHandlingScreenError {
  const NotFoundError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotFoundError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ErrorHandlingScreenError.notFound()';
}


}




/// @nodoc


class PermissionDeniedError implements ErrorHandlingScreenError {
  const PermissionDeniedError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionDeniedError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ErrorHandlingScreenError.permissionDenied()';
}


}




/// @nodoc


class UnavailableError implements ErrorHandlingScreenError {
  const UnavailableError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnavailableError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ErrorHandlingScreenError.unavailable()';
}


}




/// @nodoc


class GenericError implements ErrorHandlingScreenError {
  const GenericError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenericError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ErrorHandlingScreenError.generic()';
}


}




// dart format on
