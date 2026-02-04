// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brightness_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BrightnessUiState {

 AsyncValue<double>? get brightness;
/// Create a copy of BrightnessUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrightnessUiStateCopyWith<BrightnessUiState> get copyWith => _$BrightnessUiStateCopyWithImpl<BrightnessUiState>(this as BrightnessUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrightnessUiState&&(identical(other.brightness, brightness) || other.brightness == brightness));
}


@override
int get hashCode => Object.hash(runtimeType,brightness);

@override
String toString() {
  return 'BrightnessUiState(brightness: $brightness)';
}


}

/// @nodoc
abstract mixin class $BrightnessUiStateCopyWith<$Res>  {
  factory $BrightnessUiStateCopyWith(BrightnessUiState value, $Res Function(BrightnessUiState) _then) = _$BrightnessUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<double>? brightness
});




}
/// @nodoc
class _$BrightnessUiStateCopyWithImpl<$Res>
    implements $BrightnessUiStateCopyWith<$Res> {
  _$BrightnessUiStateCopyWithImpl(this._self, this._then);

  final BrightnessUiState _self;
  final $Res Function(BrightnessUiState) _then;

/// Create a copy of BrightnessUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? brightness = freezed,}) {
  return _then(_self.copyWith(
brightness: freezed == brightness ? _self.brightness : brightness // ignore: cast_nullable_to_non_nullable
as AsyncValue<double>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BrightnessUiState].
extension BrightnessUiStatePatterns on BrightnessUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BrightnessUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BrightnessUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BrightnessUiState value)  $default,){
final _that = this;
switch (_that) {
case _BrightnessUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BrightnessUiState value)?  $default,){
final _that = this;
switch (_that) {
case _BrightnessUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<double>? brightness)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BrightnessUiState() when $default != null:
return $default(_that.brightness);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<double>? brightness)  $default,) {final _that = this;
switch (_that) {
case _BrightnessUiState():
return $default(_that.brightness);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<double>? brightness)?  $default,) {final _that = this;
switch (_that) {
case _BrightnessUiState() when $default != null:
return $default(_that.brightness);case _:
  return null;

}
}

}

/// @nodoc


class _BrightnessUiState implements BrightnessUiState {
  const _BrightnessUiState({this.brightness});
  

@override final  AsyncValue<double>? brightness;

/// Create a copy of BrightnessUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrightnessUiStateCopyWith<_BrightnessUiState> get copyWith => __$BrightnessUiStateCopyWithImpl<_BrightnessUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BrightnessUiState&&(identical(other.brightness, brightness) || other.brightness == brightness));
}


@override
int get hashCode => Object.hash(runtimeType,brightness);

@override
String toString() {
  return 'BrightnessUiState(brightness: $brightness)';
}


}

/// @nodoc
abstract mixin class _$BrightnessUiStateCopyWith<$Res> implements $BrightnessUiStateCopyWith<$Res> {
  factory _$BrightnessUiStateCopyWith(_BrightnessUiState value, $Res Function(_BrightnessUiState) _then) = __$BrightnessUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<double>? brightness
});




}
/// @nodoc
class __$BrightnessUiStateCopyWithImpl<$Res>
    implements _$BrightnessUiStateCopyWith<$Res> {
  __$BrightnessUiStateCopyWithImpl(this._self, this._then);

  final _BrightnessUiState _self;
  final $Res Function(_BrightnessUiState) _then;

/// Create a copy of BrightnessUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? brightness = freezed,}) {
  return _then(_BrightnessUiState(
brightness: freezed == brightness ? _self.brightness : brightness // ignore: cast_nullable_to_non_nullable
as AsyncValue<double>?,
  ));
}


}

// dart format on
