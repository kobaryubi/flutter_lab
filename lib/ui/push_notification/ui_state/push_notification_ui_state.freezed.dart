// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'push_notification_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PushNotificationUiState {

 PushNotificationSetup? get setup; String? get error;
/// Create a copy of PushNotificationUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PushNotificationUiStateCopyWith<PushNotificationUiState> get copyWith => _$PushNotificationUiStateCopyWithImpl<PushNotificationUiState>(this as PushNotificationUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PushNotificationUiState&&(identical(other.setup, setup) || other.setup == setup)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,setup,error);

@override
String toString() {
  return 'PushNotificationUiState(setup: $setup, error: $error)';
}


}

/// @nodoc
abstract mixin class $PushNotificationUiStateCopyWith<$Res>  {
  factory $PushNotificationUiStateCopyWith(PushNotificationUiState value, $Res Function(PushNotificationUiState) _then) = _$PushNotificationUiStateCopyWithImpl;
@useResult
$Res call({
 PushNotificationSetup? setup, String? error
});


$PushNotificationSetupCopyWith<$Res>? get setup;

}
/// @nodoc
class _$PushNotificationUiStateCopyWithImpl<$Res>
    implements $PushNotificationUiStateCopyWith<$Res> {
  _$PushNotificationUiStateCopyWithImpl(this._self, this._then);

  final PushNotificationUiState _self;
  final $Res Function(PushNotificationUiState) _then;

/// Create a copy of PushNotificationUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? setup = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
setup: freezed == setup ? _self.setup : setup // ignore: cast_nullable_to_non_nullable
as PushNotificationSetup?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of PushNotificationUiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PushNotificationSetupCopyWith<$Res>? get setup {
    if (_self.setup == null) {
    return null;
  }

  return $PushNotificationSetupCopyWith<$Res>(_self.setup!, (value) {
    return _then(_self.copyWith(setup: value));
  });
}
}


/// Adds pattern-matching-related methods to [PushNotificationUiState].
extension PushNotificationUiStatePatterns on PushNotificationUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PushNotificationUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PushNotificationUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PushNotificationUiState value)  $default,){
final _that = this;
switch (_that) {
case _PushNotificationUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PushNotificationUiState value)?  $default,){
final _that = this;
switch (_that) {
case _PushNotificationUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PushNotificationSetup? setup,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PushNotificationUiState() when $default != null:
return $default(_that.setup,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PushNotificationSetup? setup,  String? error)  $default,) {final _that = this;
switch (_that) {
case _PushNotificationUiState():
return $default(_that.setup,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PushNotificationSetup? setup,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _PushNotificationUiState() when $default != null:
return $default(_that.setup,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _PushNotificationUiState implements PushNotificationUiState {
  const _PushNotificationUiState({this.setup, this.error});
  

@override final  PushNotificationSetup? setup;
@override final  String? error;

/// Create a copy of PushNotificationUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PushNotificationUiStateCopyWith<_PushNotificationUiState> get copyWith => __$PushNotificationUiStateCopyWithImpl<_PushNotificationUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PushNotificationUiState&&(identical(other.setup, setup) || other.setup == setup)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,setup,error);

@override
String toString() {
  return 'PushNotificationUiState(setup: $setup, error: $error)';
}


}

/// @nodoc
abstract mixin class _$PushNotificationUiStateCopyWith<$Res> implements $PushNotificationUiStateCopyWith<$Res> {
  factory _$PushNotificationUiStateCopyWith(_PushNotificationUiState value, $Res Function(_PushNotificationUiState) _then) = __$PushNotificationUiStateCopyWithImpl;
@override @useResult
$Res call({
 PushNotificationSetup? setup, String? error
});


@override $PushNotificationSetupCopyWith<$Res>? get setup;

}
/// @nodoc
class __$PushNotificationUiStateCopyWithImpl<$Res>
    implements _$PushNotificationUiStateCopyWith<$Res> {
  __$PushNotificationUiStateCopyWithImpl(this._self, this._then);

  final _PushNotificationUiState _self;
  final $Res Function(_PushNotificationUiState) _then;

/// Create a copy of PushNotificationUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? setup = freezed,Object? error = freezed,}) {
  return _then(_PushNotificationUiState(
setup: freezed == setup ? _self.setup : setup // ignore: cast_nullable_to_non_nullable
as PushNotificationSetup?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PushNotificationUiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PushNotificationSetupCopyWith<$Res>? get setup {
    if (_self.setup == null) {
    return null;
  }

  return $PushNotificationSetupCopyWith<$Res>(_self.setup!, (value) {
    return _then(_self.copyWith(setup: value));
  });
}
}

// dart format on
