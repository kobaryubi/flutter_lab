// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocationUiState {

 AsyncValue<Location>? get location;
/// Create a copy of LocationUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationUiStateCopyWith<LocationUiState> get copyWith => _$LocationUiStateCopyWithImpl<LocationUiState>(this as LocationUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationUiState&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,location);

@override
String toString() {
  return 'LocationUiState(location: $location)';
}


}

/// @nodoc
abstract mixin class $LocationUiStateCopyWith<$Res>  {
  factory $LocationUiStateCopyWith(LocationUiState value, $Res Function(LocationUiState) _then) = _$LocationUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<Location>? location
});




}
/// @nodoc
class _$LocationUiStateCopyWithImpl<$Res>
    implements $LocationUiStateCopyWith<$Res> {
  _$LocationUiStateCopyWithImpl(this._self, this._then);

  final LocationUiState _self;
  final $Res Function(LocationUiState) _then;

/// Create a copy of LocationUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? location = freezed,}) {
  return _then(_self.copyWith(
location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as AsyncValue<Location>?,
  ));
}

}


/// Adds pattern-matching-related methods to [LocationUiState].
extension LocationUiStatePatterns on LocationUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocationUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocationUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocationUiState value)  $default,){
final _that = this;
switch (_that) {
case _LocationUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocationUiState value)?  $default,){
final _that = this;
switch (_that) {
case _LocationUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<Location>? location)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationUiState() when $default != null:
return $default(_that.location);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<Location>? location)  $default,) {final _that = this;
switch (_that) {
case _LocationUiState():
return $default(_that.location);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<Location>? location)?  $default,) {final _that = this;
switch (_that) {
case _LocationUiState() when $default != null:
return $default(_that.location);case _:
  return null;

}
}

}

/// @nodoc


class _LocationUiState implements LocationUiState {
  const _LocationUiState({required this.location});
  

@override final  AsyncValue<Location>? location;

/// Create a copy of LocationUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationUiStateCopyWith<_LocationUiState> get copyWith => __$LocationUiStateCopyWithImpl<_LocationUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationUiState&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,location);

@override
String toString() {
  return 'LocationUiState(location: $location)';
}


}

/// @nodoc
abstract mixin class _$LocationUiStateCopyWith<$Res> implements $LocationUiStateCopyWith<$Res> {
  factory _$LocationUiStateCopyWith(_LocationUiState value, $Res Function(_LocationUiState) _then) = __$LocationUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<Location>? location
});




}
/// @nodoc
class __$LocationUiStateCopyWithImpl<$Res>
    implements _$LocationUiStateCopyWith<$Res> {
  __$LocationUiStateCopyWithImpl(this._self, this._then);

  final _LocationUiState _self;
  final $Res Function(_LocationUiState) _then;

/// Create a copy of LocationUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? location = freezed,}) {
  return _then(_LocationUiState(
location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as AsyncValue<Location>?,
  ));
}


}

// dart format on
