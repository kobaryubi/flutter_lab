// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_info_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DeviceInfoUiState {

 AsyncValue<DeviceInfo> get deviceInfo;
/// Create a copy of DeviceInfoUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceInfoUiStateCopyWith<DeviceInfoUiState> get copyWith => _$DeviceInfoUiStateCopyWithImpl<DeviceInfoUiState>(this as DeviceInfoUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceInfoUiState&&(identical(other.deviceInfo, deviceInfo) || other.deviceInfo == deviceInfo));
}


@override
int get hashCode => Object.hash(runtimeType,deviceInfo);

@override
String toString() {
  return 'DeviceInfoUiState(deviceInfo: $deviceInfo)';
}


}

/// @nodoc
abstract mixin class $DeviceInfoUiStateCopyWith<$Res>  {
  factory $DeviceInfoUiStateCopyWith(DeviceInfoUiState value, $Res Function(DeviceInfoUiState) _then) = _$DeviceInfoUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<DeviceInfo> deviceInfo
});




}
/// @nodoc
class _$DeviceInfoUiStateCopyWithImpl<$Res>
    implements $DeviceInfoUiStateCopyWith<$Res> {
  _$DeviceInfoUiStateCopyWithImpl(this._self, this._then);

  final DeviceInfoUiState _self;
  final $Res Function(DeviceInfoUiState) _then;

/// Create a copy of DeviceInfoUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deviceInfo = null,}) {
  return _then(_self.copyWith(
deviceInfo: null == deviceInfo ? _self.deviceInfo : deviceInfo // ignore: cast_nullable_to_non_nullable
as AsyncValue<DeviceInfo>,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceInfoUiState].
extension DeviceInfoUiStatePatterns on DeviceInfoUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceInfoUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceInfoUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceInfoUiState value)  $default,){
final _that = this;
switch (_that) {
case _DeviceInfoUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceInfoUiState value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceInfoUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<DeviceInfo> deviceInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceInfoUiState() when $default != null:
return $default(_that.deviceInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<DeviceInfo> deviceInfo)  $default,) {final _that = this;
switch (_that) {
case _DeviceInfoUiState():
return $default(_that.deviceInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<DeviceInfo> deviceInfo)?  $default,) {final _that = this;
switch (_that) {
case _DeviceInfoUiState() when $default != null:
return $default(_that.deviceInfo);case _:
  return null;

}
}

}

/// @nodoc


class _DeviceInfoUiState implements DeviceInfoUiState {
  const _DeviceInfoUiState({required this.deviceInfo});
  

@override final  AsyncValue<DeviceInfo> deviceInfo;

/// Create a copy of DeviceInfoUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceInfoUiStateCopyWith<_DeviceInfoUiState> get copyWith => __$DeviceInfoUiStateCopyWithImpl<_DeviceInfoUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceInfoUiState&&(identical(other.deviceInfo, deviceInfo) || other.deviceInfo == deviceInfo));
}


@override
int get hashCode => Object.hash(runtimeType,deviceInfo);

@override
String toString() {
  return 'DeviceInfoUiState(deviceInfo: $deviceInfo)';
}


}

/// @nodoc
abstract mixin class _$DeviceInfoUiStateCopyWith<$Res> implements $DeviceInfoUiStateCopyWith<$Res> {
  factory _$DeviceInfoUiStateCopyWith(_DeviceInfoUiState value, $Res Function(_DeviceInfoUiState) _then) = __$DeviceInfoUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<DeviceInfo> deviceInfo
});




}
/// @nodoc
class __$DeviceInfoUiStateCopyWithImpl<$Res>
    implements _$DeviceInfoUiStateCopyWith<$Res> {
  __$DeviceInfoUiStateCopyWithImpl(this._self, this._then);

  final _DeviceInfoUiState _self;
  final $Res Function(_DeviceInfoUiState) _then;

/// Create a copy of DeviceInfoUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deviceInfo = null,}) {
  return _then(_DeviceInfoUiState(
deviceInfo: null == deviceInfo ? _self.deviceInfo : deviceInfo // ignore: cast_nullable_to_non_nullable
as AsyncValue<DeviceInfo>,
  ));
}


}

// dart format on
