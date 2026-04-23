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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NotFound value)?  notFound,TResult Function( PermissionDenied value)?  permissionDenied,TResult Function( Unavailable value)?  unavailable,TResult Function( Generic value)?  generic,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NotFound() when notFound != null:
return notFound(_that);case PermissionDenied() when permissionDenied != null:
return permissionDenied(_that);case Unavailable() when unavailable != null:
return unavailable(_that);case Generic() when generic != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NotFound value)  notFound,required TResult Function( PermissionDenied value)  permissionDenied,required TResult Function( Unavailable value)  unavailable,required TResult Function( Generic value)  generic,}){
final _that = this;
switch (_that) {
case NotFound():
return notFound(_that);case PermissionDenied():
return permissionDenied(_that);case Unavailable():
return unavailable(_that);case Generic():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NotFound value)?  notFound,TResult? Function( PermissionDenied value)?  permissionDenied,TResult? Function( Unavailable value)?  unavailable,TResult? Function( Generic value)?  generic,}){
final _that = this;
switch (_that) {
case NotFound() when notFound != null:
return notFound(_that);case PermissionDenied() when permissionDenied != null:
return permissionDenied(_that);case Unavailable() when unavailable != null:
return unavailable(_that);case Generic() when generic != null:
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
case NotFound() when notFound != null:
return notFound();case PermissionDenied() when permissionDenied != null:
return permissionDenied();case Unavailable() when unavailable != null:
return unavailable();case Generic() when generic != null:
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
case NotFound():
return notFound();case PermissionDenied():
return permissionDenied();case Unavailable():
return unavailable();case Generic():
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
case NotFound() when notFound != null:
return notFound();case PermissionDenied() when permissionDenied != null:
return permissionDenied();case Unavailable() when unavailable != null:
return unavailable();case Generic() when generic != null:
return generic();case _:
  return null;

}
}

}

/// @nodoc


class NotFound implements ErrorHandlingScreenError {
  const NotFound();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotFound);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ErrorHandlingScreenError.notFound()';
}


}




/// @nodoc


class PermissionDenied implements ErrorHandlingScreenError {
  const PermissionDenied();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionDenied);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ErrorHandlingScreenError.permissionDenied()';
}


}




/// @nodoc


class Unavailable implements ErrorHandlingScreenError {
  const Unavailable();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unavailable);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ErrorHandlingScreenError.unavailable()';
}


}




/// @nodoc


class Generic implements ErrorHandlingScreenError {
  const Generic();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Generic);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ErrorHandlingScreenError.generic()';
}


}




// dart format on
