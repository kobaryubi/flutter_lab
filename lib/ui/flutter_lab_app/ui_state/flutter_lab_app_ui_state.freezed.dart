// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flutter_lab_app_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FlutterLabAppUiState {

 PushMessage? get lastOpenedPushMessage;
/// Create a copy of FlutterLabAppUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlutterLabAppUiStateCopyWith<FlutterLabAppUiState> get copyWith => _$FlutterLabAppUiStateCopyWithImpl<FlutterLabAppUiState>(this as FlutterLabAppUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlutterLabAppUiState&&(identical(other.lastOpenedPushMessage, lastOpenedPushMessage) || other.lastOpenedPushMessage == lastOpenedPushMessage));
}


@override
int get hashCode => Object.hash(runtimeType,lastOpenedPushMessage);

@override
String toString() {
  return 'FlutterLabAppUiState(lastOpenedPushMessage: $lastOpenedPushMessage)';
}


}

/// @nodoc
abstract mixin class $FlutterLabAppUiStateCopyWith<$Res>  {
  factory $FlutterLabAppUiStateCopyWith(FlutterLabAppUiState value, $Res Function(FlutterLabAppUiState) _then) = _$FlutterLabAppUiStateCopyWithImpl;
@useResult
$Res call({
 PushMessage? lastOpenedPushMessage
});


$PushMessageCopyWith<$Res>? get lastOpenedPushMessage;

}
/// @nodoc
class _$FlutterLabAppUiStateCopyWithImpl<$Res>
    implements $FlutterLabAppUiStateCopyWith<$Res> {
  _$FlutterLabAppUiStateCopyWithImpl(this._self, this._then);

  final FlutterLabAppUiState _self;
  final $Res Function(FlutterLabAppUiState) _then;

/// Create a copy of FlutterLabAppUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lastOpenedPushMessage = freezed,}) {
  return _then(_self.copyWith(
lastOpenedPushMessage: freezed == lastOpenedPushMessage ? _self.lastOpenedPushMessage : lastOpenedPushMessage // ignore: cast_nullable_to_non_nullable
as PushMessage?,
  ));
}
/// Create a copy of FlutterLabAppUiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PushMessageCopyWith<$Res>? get lastOpenedPushMessage {
    if (_self.lastOpenedPushMessage == null) {
    return null;
  }

  return $PushMessageCopyWith<$Res>(_self.lastOpenedPushMessage!, (value) {
    return _then(_self.copyWith(lastOpenedPushMessage: value));
  });
}
}


/// Adds pattern-matching-related methods to [FlutterLabAppUiState].
extension FlutterLabAppUiStatePatterns on FlutterLabAppUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FlutterLabAppUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FlutterLabAppUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FlutterLabAppUiState value)  $default,){
final _that = this;
switch (_that) {
case _FlutterLabAppUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FlutterLabAppUiState value)?  $default,){
final _that = this;
switch (_that) {
case _FlutterLabAppUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PushMessage? lastOpenedPushMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FlutterLabAppUiState() when $default != null:
return $default(_that.lastOpenedPushMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PushMessage? lastOpenedPushMessage)  $default,) {final _that = this;
switch (_that) {
case _FlutterLabAppUiState():
return $default(_that.lastOpenedPushMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PushMessage? lastOpenedPushMessage)?  $default,) {final _that = this;
switch (_that) {
case _FlutterLabAppUiState() when $default != null:
return $default(_that.lastOpenedPushMessage);case _:
  return null;

}
}

}

/// @nodoc


class _FlutterLabAppUiState implements FlutterLabAppUiState {
  const _FlutterLabAppUiState({this.lastOpenedPushMessage});
  

@override final  PushMessage? lastOpenedPushMessage;

/// Create a copy of FlutterLabAppUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlutterLabAppUiStateCopyWith<_FlutterLabAppUiState> get copyWith => __$FlutterLabAppUiStateCopyWithImpl<_FlutterLabAppUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FlutterLabAppUiState&&(identical(other.lastOpenedPushMessage, lastOpenedPushMessage) || other.lastOpenedPushMessage == lastOpenedPushMessage));
}


@override
int get hashCode => Object.hash(runtimeType,lastOpenedPushMessage);

@override
String toString() {
  return 'FlutterLabAppUiState(lastOpenedPushMessage: $lastOpenedPushMessage)';
}


}

/// @nodoc
abstract mixin class _$FlutterLabAppUiStateCopyWith<$Res> implements $FlutterLabAppUiStateCopyWith<$Res> {
  factory _$FlutterLabAppUiStateCopyWith(_FlutterLabAppUiState value, $Res Function(_FlutterLabAppUiState) _then) = __$FlutterLabAppUiStateCopyWithImpl;
@override @useResult
$Res call({
 PushMessage? lastOpenedPushMessage
});


@override $PushMessageCopyWith<$Res>? get lastOpenedPushMessage;

}
/// @nodoc
class __$FlutterLabAppUiStateCopyWithImpl<$Res>
    implements _$FlutterLabAppUiStateCopyWith<$Res> {
  __$FlutterLabAppUiStateCopyWithImpl(this._self, this._then);

  final _FlutterLabAppUiState _self;
  final $Res Function(_FlutterLabAppUiState) _then;

/// Create a copy of FlutterLabAppUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lastOpenedPushMessage = freezed,}) {
  return _then(_FlutterLabAppUiState(
lastOpenedPushMessage: freezed == lastOpenedPushMessage ? _self.lastOpenedPushMessage : lastOpenedPushMessage // ignore: cast_nullable_to_non_nullable
as PushMessage?,
  ));
}

/// Create a copy of FlutterLabAppUiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PushMessageCopyWith<$Res>? get lastOpenedPushMessage {
    if (_self.lastOpenedPushMessage == null) {
    return null;
  }

  return $PushMessageCopyWith<$Res>(_self.lastOpenedPushMessage!, (value) {
    return _then(_self.copyWith(lastOpenedPushMessage: value));
  });
}
}

// dart format on
