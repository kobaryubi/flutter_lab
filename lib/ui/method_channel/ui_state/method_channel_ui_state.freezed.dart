// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'method_channel_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MethodChannelUiState {

 AsyncValue<Location> get location; AsyncValue<Battery> get batteryLevel; AsyncValue<Location>? get watchedLocation; int get buttonTapCount;
/// Create a copy of MethodChannelUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MethodChannelUiStateCopyWith<MethodChannelUiState> get copyWith => _$MethodChannelUiStateCopyWithImpl<MethodChannelUiState>(this as MethodChannelUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MethodChannelUiState&&(identical(other.location, location) || other.location == location)&&(identical(other.batteryLevel, batteryLevel) || other.batteryLevel == batteryLevel)&&(identical(other.watchedLocation, watchedLocation) || other.watchedLocation == watchedLocation)&&(identical(other.buttonTapCount, buttonTapCount) || other.buttonTapCount == buttonTapCount));
}


@override
int get hashCode => Object.hash(runtimeType,location,batteryLevel,watchedLocation,buttonTapCount);

@override
String toString() {
  return 'MethodChannelUiState(location: $location, batteryLevel: $batteryLevel, watchedLocation: $watchedLocation, buttonTapCount: $buttonTapCount)';
}


}

/// @nodoc
abstract mixin class $MethodChannelUiStateCopyWith<$Res>  {
  factory $MethodChannelUiStateCopyWith(MethodChannelUiState value, $Res Function(MethodChannelUiState) _then) = _$MethodChannelUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<Location> location, AsyncValue<Battery> batteryLevel, AsyncValue<Location>? watchedLocation, int buttonTapCount
});




}
/// @nodoc
class _$MethodChannelUiStateCopyWithImpl<$Res>
    implements $MethodChannelUiStateCopyWith<$Res> {
  _$MethodChannelUiStateCopyWithImpl(this._self, this._then);

  final MethodChannelUiState _self;
  final $Res Function(MethodChannelUiState) _then;

/// Create a copy of MethodChannelUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? location = null,Object? batteryLevel = null,Object? watchedLocation = freezed,Object? buttonTapCount = null,}) {
  return _then(_self.copyWith(
location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as AsyncValue<Location>,batteryLevel: null == batteryLevel ? _self.batteryLevel : batteryLevel // ignore: cast_nullable_to_non_nullable
as AsyncValue<Battery>,watchedLocation: freezed == watchedLocation ? _self.watchedLocation : watchedLocation // ignore: cast_nullable_to_non_nullable
as AsyncValue<Location>?,buttonTapCount: null == buttonTapCount ? _self.buttonTapCount : buttonTapCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MethodChannelUiState].
extension MethodChannelUiStatePatterns on MethodChannelUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MethodChannelUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MethodChannelUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MethodChannelUiState value)  $default,){
final _that = this;
switch (_that) {
case _MethodChannelUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MethodChannelUiState value)?  $default,){
final _that = this;
switch (_that) {
case _MethodChannelUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<Location> location,  AsyncValue<Battery> batteryLevel,  AsyncValue<Location>? watchedLocation,  int buttonTapCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MethodChannelUiState() when $default != null:
return $default(_that.location,_that.batteryLevel,_that.watchedLocation,_that.buttonTapCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<Location> location,  AsyncValue<Battery> batteryLevel,  AsyncValue<Location>? watchedLocation,  int buttonTapCount)  $default,) {final _that = this;
switch (_that) {
case _MethodChannelUiState():
return $default(_that.location,_that.batteryLevel,_that.watchedLocation,_that.buttonTapCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<Location> location,  AsyncValue<Battery> batteryLevel,  AsyncValue<Location>? watchedLocation,  int buttonTapCount)?  $default,) {final _that = this;
switch (_that) {
case _MethodChannelUiState() when $default != null:
return $default(_that.location,_that.batteryLevel,_that.watchedLocation,_that.buttonTapCount);case _:
  return null;

}
}

}

/// @nodoc


class _MethodChannelUiState implements MethodChannelUiState {
  const _MethodChannelUiState({required this.location, required this.batteryLevel, this.watchedLocation, this.buttonTapCount = 0});
  

@override final  AsyncValue<Location> location;
@override final  AsyncValue<Battery> batteryLevel;
@override final  AsyncValue<Location>? watchedLocation;
@override@JsonKey() final  int buttonTapCount;

/// Create a copy of MethodChannelUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MethodChannelUiStateCopyWith<_MethodChannelUiState> get copyWith => __$MethodChannelUiStateCopyWithImpl<_MethodChannelUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MethodChannelUiState&&(identical(other.location, location) || other.location == location)&&(identical(other.batteryLevel, batteryLevel) || other.batteryLevel == batteryLevel)&&(identical(other.watchedLocation, watchedLocation) || other.watchedLocation == watchedLocation)&&(identical(other.buttonTapCount, buttonTapCount) || other.buttonTapCount == buttonTapCount));
}


@override
int get hashCode => Object.hash(runtimeType,location,batteryLevel,watchedLocation,buttonTapCount);

@override
String toString() {
  return 'MethodChannelUiState(location: $location, batteryLevel: $batteryLevel, watchedLocation: $watchedLocation, buttonTapCount: $buttonTapCount)';
}


}

/// @nodoc
abstract mixin class _$MethodChannelUiStateCopyWith<$Res> implements $MethodChannelUiStateCopyWith<$Res> {
  factory _$MethodChannelUiStateCopyWith(_MethodChannelUiState value, $Res Function(_MethodChannelUiState) _then) = __$MethodChannelUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<Location> location, AsyncValue<Battery> batteryLevel, AsyncValue<Location>? watchedLocation, int buttonTapCount
});




}
/// @nodoc
class __$MethodChannelUiStateCopyWithImpl<$Res>
    implements _$MethodChannelUiStateCopyWith<$Res> {
  __$MethodChannelUiStateCopyWithImpl(this._self, this._then);

  final _MethodChannelUiState _self;
  final $Res Function(_MethodChannelUiState) _then;

/// Create a copy of MethodChannelUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? location = null,Object? batteryLevel = null,Object? watchedLocation = freezed,Object? buttonTapCount = null,}) {
  return _then(_MethodChannelUiState(
location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as AsyncValue<Location>,batteryLevel: null == batteryLevel ? _self.batteryLevel : batteryLevel // ignore: cast_nullable_to_non_nullable
as AsyncValue<Battery>,watchedLocation: freezed == watchedLocation ? _self.watchedLocation : watchedLocation // ignore: cast_nullable_to_non_nullable
as AsyncValue<Location>?,buttonTapCount: null == buttonTapCount ? _self.buttonTapCount : buttonTapCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
