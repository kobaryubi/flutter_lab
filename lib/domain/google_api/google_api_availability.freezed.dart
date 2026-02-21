// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_api_availability.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GoogleApiAvailability {

 GooglePlayServicesStatus get status;
/// Create a copy of GoogleApiAvailability
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoogleApiAvailabilityCopyWith<GoogleApiAvailability> get copyWith => _$GoogleApiAvailabilityCopyWithImpl<GoogleApiAvailability>(this as GoogleApiAvailability, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleApiAvailability&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'GoogleApiAvailability(status: $status)';
}


}

/// @nodoc
abstract mixin class $GoogleApiAvailabilityCopyWith<$Res>  {
  factory $GoogleApiAvailabilityCopyWith(GoogleApiAvailability value, $Res Function(GoogleApiAvailability) _then) = _$GoogleApiAvailabilityCopyWithImpl;
@useResult
$Res call({
 GooglePlayServicesStatus status
});




}
/// @nodoc
class _$GoogleApiAvailabilityCopyWithImpl<$Res>
    implements $GoogleApiAvailabilityCopyWith<$Res> {
  _$GoogleApiAvailabilityCopyWithImpl(this._self, this._then);

  final GoogleApiAvailability _self;
  final $Res Function(GoogleApiAvailability) _then;

/// Create a copy of GoogleApiAvailability
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GooglePlayServicesStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [GoogleApiAvailability].
extension GoogleApiAvailabilityPatterns on GoogleApiAvailability {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GoogleApiAvailability value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GoogleApiAvailability() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GoogleApiAvailability value)  $default,){
final _that = this;
switch (_that) {
case _GoogleApiAvailability():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GoogleApiAvailability value)?  $default,){
final _that = this;
switch (_that) {
case _GoogleApiAvailability() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GooglePlayServicesStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoogleApiAvailability() when $default != null:
return $default(_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GooglePlayServicesStatus status)  $default,) {final _that = this;
switch (_that) {
case _GoogleApiAvailability():
return $default(_that.status);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GooglePlayServicesStatus status)?  $default,) {final _that = this;
switch (_that) {
case _GoogleApiAvailability() when $default != null:
return $default(_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _GoogleApiAvailability extends GoogleApiAvailability {
  const _GoogleApiAvailability({required this.status}): super._();
  

@override final  GooglePlayServicesStatus status;

/// Create a copy of GoogleApiAvailability
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoogleApiAvailabilityCopyWith<_GoogleApiAvailability> get copyWith => __$GoogleApiAvailabilityCopyWithImpl<_GoogleApiAvailability>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoogleApiAvailability&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'GoogleApiAvailability(status: $status)';
}


}

/// @nodoc
abstract mixin class _$GoogleApiAvailabilityCopyWith<$Res> implements $GoogleApiAvailabilityCopyWith<$Res> {
  factory _$GoogleApiAvailabilityCopyWith(_GoogleApiAvailability value, $Res Function(_GoogleApiAvailability) _then) = __$GoogleApiAvailabilityCopyWithImpl;
@override @useResult
$Res call({
 GooglePlayServicesStatus status
});




}
/// @nodoc
class __$GoogleApiAvailabilityCopyWithImpl<$Res>
    implements _$GoogleApiAvailabilityCopyWith<$Res> {
  __$GoogleApiAvailabilityCopyWithImpl(this._self, this._then);

  final _GoogleApiAvailability _self;
  final $Res Function(_GoogleApiAvailability) _then;

/// Create a copy of GoogleApiAvailability
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_GoogleApiAvailability(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GooglePlayServicesStatus,
  ));
}


}

// dart format on
