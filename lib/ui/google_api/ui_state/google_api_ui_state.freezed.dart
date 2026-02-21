// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_api_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GoogleApiUiState {

 AsyncValue<GoogleApiAvailability>? get availability;
/// Create a copy of GoogleApiUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoogleApiUiStateCopyWith<GoogleApiUiState> get copyWith => _$GoogleApiUiStateCopyWithImpl<GoogleApiUiState>(this as GoogleApiUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleApiUiState&&(identical(other.availability, availability) || other.availability == availability));
}


@override
int get hashCode => Object.hash(runtimeType,availability);

@override
String toString() {
  return 'GoogleApiUiState(availability: $availability)';
}


}

/// @nodoc
abstract mixin class $GoogleApiUiStateCopyWith<$Res>  {
  factory $GoogleApiUiStateCopyWith(GoogleApiUiState value, $Res Function(GoogleApiUiState) _then) = _$GoogleApiUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<GoogleApiAvailability>? availability
});




}
/// @nodoc
class _$GoogleApiUiStateCopyWithImpl<$Res>
    implements $GoogleApiUiStateCopyWith<$Res> {
  _$GoogleApiUiStateCopyWithImpl(this._self, this._then);

  final GoogleApiUiState _self;
  final $Res Function(GoogleApiUiState) _then;

/// Create a copy of GoogleApiUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? availability = freezed,}) {
  return _then(_self.copyWith(
availability: freezed == availability ? _self.availability : availability // ignore: cast_nullable_to_non_nullable
as AsyncValue<GoogleApiAvailability>?,
  ));
}

}


/// Adds pattern-matching-related methods to [GoogleApiUiState].
extension GoogleApiUiStatePatterns on GoogleApiUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GoogleApiUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GoogleApiUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GoogleApiUiState value)  $default,){
final _that = this;
switch (_that) {
case _GoogleApiUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GoogleApiUiState value)?  $default,){
final _that = this;
switch (_that) {
case _GoogleApiUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<GoogleApiAvailability>? availability)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoogleApiUiState() when $default != null:
return $default(_that.availability);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<GoogleApiAvailability>? availability)  $default,) {final _that = this;
switch (_that) {
case _GoogleApiUiState():
return $default(_that.availability);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<GoogleApiAvailability>? availability)?  $default,) {final _that = this;
switch (_that) {
case _GoogleApiUiState() when $default != null:
return $default(_that.availability);case _:
  return null;

}
}

}

/// @nodoc


class _GoogleApiUiState implements GoogleApiUiState {
  const _GoogleApiUiState({this.availability});
  

@override final  AsyncValue<GoogleApiAvailability>? availability;

/// Create a copy of GoogleApiUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoogleApiUiStateCopyWith<_GoogleApiUiState> get copyWith => __$GoogleApiUiStateCopyWithImpl<_GoogleApiUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoogleApiUiState&&(identical(other.availability, availability) || other.availability == availability));
}


@override
int get hashCode => Object.hash(runtimeType,availability);

@override
String toString() {
  return 'GoogleApiUiState(availability: $availability)';
}


}

/// @nodoc
abstract mixin class _$GoogleApiUiStateCopyWith<$Res> implements $GoogleApiUiStateCopyWith<$Res> {
  factory _$GoogleApiUiStateCopyWith(_GoogleApiUiState value, $Res Function(_GoogleApiUiState) _then) = __$GoogleApiUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<GoogleApiAvailability>? availability
});




}
/// @nodoc
class __$GoogleApiUiStateCopyWithImpl<$Res>
    implements _$GoogleApiUiStateCopyWith<$Res> {
  __$GoogleApiUiStateCopyWithImpl(this._self, this._then);

  final _GoogleApiUiState _self;
  final $Res Function(_GoogleApiUiState) _then;

/// Create a copy of GoogleApiUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? availability = freezed,}) {
  return _then(_GoogleApiUiState(
availability: freezed == availability ? _self.availability : availability // ignore: cast_nullable_to_non_nullable
as AsyncValue<GoogleApiAvailability>?,
  ));
}


}

// dart format on
