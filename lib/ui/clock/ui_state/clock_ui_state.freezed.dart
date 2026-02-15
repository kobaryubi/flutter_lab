// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clock_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClockUiState {

/// Current time from the clock package.
 DateTime get currentTime;/// Time elapsed since the screen was opened.
 Duration get elapsedDuration;
/// Create a copy of ClockUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClockUiStateCopyWith<ClockUiState> get copyWith => _$ClockUiStateCopyWithImpl<ClockUiState>(this as ClockUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClockUiState&&(identical(other.currentTime, currentTime) || other.currentTime == currentTime)&&(identical(other.elapsedDuration, elapsedDuration) || other.elapsedDuration == elapsedDuration));
}


@override
int get hashCode => Object.hash(runtimeType,currentTime,elapsedDuration);

@override
String toString() {
  return 'ClockUiState(currentTime: $currentTime, elapsedDuration: $elapsedDuration)';
}


}

/// @nodoc
abstract mixin class $ClockUiStateCopyWith<$Res>  {
  factory $ClockUiStateCopyWith(ClockUiState value, $Res Function(ClockUiState) _then) = _$ClockUiStateCopyWithImpl;
@useResult
$Res call({
 DateTime currentTime, Duration elapsedDuration
});




}
/// @nodoc
class _$ClockUiStateCopyWithImpl<$Res>
    implements $ClockUiStateCopyWith<$Res> {
  _$ClockUiStateCopyWithImpl(this._self, this._then);

  final ClockUiState _self;
  final $Res Function(ClockUiState) _then;

/// Create a copy of ClockUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentTime = null,Object? elapsedDuration = null,}) {
  return _then(_self.copyWith(
currentTime: null == currentTime ? _self.currentTime : currentTime // ignore: cast_nullable_to_non_nullable
as DateTime,elapsedDuration: null == elapsedDuration ? _self.elapsedDuration : elapsedDuration // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}

}


/// Adds pattern-matching-related methods to [ClockUiState].
extension ClockUiStatePatterns on ClockUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClockUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClockUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClockUiState value)  $default,){
final _that = this;
switch (_that) {
case _ClockUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClockUiState value)?  $default,){
final _that = this;
switch (_that) {
case _ClockUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime currentTime,  Duration elapsedDuration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClockUiState() when $default != null:
return $default(_that.currentTime,_that.elapsedDuration);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime currentTime,  Duration elapsedDuration)  $default,) {final _that = this;
switch (_that) {
case _ClockUiState():
return $default(_that.currentTime,_that.elapsedDuration);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime currentTime,  Duration elapsedDuration)?  $default,) {final _that = this;
switch (_that) {
case _ClockUiState() when $default != null:
return $default(_that.currentTime,_that.elapsedDuration);case _:
  return null;

}
}

}

/// @nodoc


class _ClockUiState implements ClockUiState {
  const _ClockUiState({required this.currentTime, required this.elapsedDuration});
  

/// Current time from the clock package.
@override final  DateTime currentTime;
/// Time elapsed since the screen was opened.
@override final  Duration elapsedDuration;

/// Create a copy of ClockUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClockUiStateCopyWith<_ClockUiState> get copyWith => __$ClockUiStateCopyWithImpl<_ClockUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClockUiState&&(identical(other.currentTime, currentTime) || other.currentTime == currentTime)&&(identical(other.elapsedDuration, elapsedDuration) || other.elapsedDuration == elapsedDuration));
}


@override
int get hashCode => Object.hash(runtimeType,currentTime,elapsedDuration);

@override
String toString() {
  return 'ClockUiState(currentTime: $currentTime, elapsedDuration: $elapsedDuration)';
}


}

/// @nodoc
abstract mixin class _$ClockUiStateCopyWith<$Res> implements $ClockUiStateCopyWith<$Res> {
  factory _$ClockUiStateCopyWith(_ClockUiState value, $Res Function(_ClockUiState) _then) = __$ClockUiStateCopyWithImpl;
@override @useResult
$Res call({
 DateTime currentTime, Duration elapsedDuration
});




}
/// @nodoc
class __$ClockUiStateCopyWithImpl<$Res>
    implements _$ClockUiStateCopyWith<$Res> {
  __$ClockUiStateCopyWithImpl(this._self, this._then);

  final _ClockUiState _self;
  final $Res Function(_ClockUiState) _then;

/// Create a copy of ClockUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentTime = null,Object? elapsedDuration = null,}) {
  return _then(_ClockUiState(
currentTime: null == currentTime ? _self.currentTime : currentTime // ignore: cast_nullable_to_non_nullable
as DateTime,elapsedDuration: null == elapsedDuration ? _self.elapsedDuration : elapsedDuration // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}


}

// dart format on
