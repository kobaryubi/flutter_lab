// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_token_login_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RefreshTokenLoginUiState {

 AsyncValue<Uri>? get loginUrl;
/// Create a copy of RefreshTokenLoginUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefreshTokenLoginUiStateCopyWith<RefreshTokenLoginUiState> get copyWith => _$RefreshTokenLoginUiStateCopyWithImpl<RefreshTokenLoginUiState>(this as RefreshTokenLoginUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshTokenLoginUiState&&(identical(other.loginUrl, loginUrl) || other.loginUrl == loginUrl));
}


@override
int get hashCode => Object.hash(runtimeType,loginUrl);

@override
String toString() {
  return 'RefreshTokenLoginUiState(loginUrl: $loginUrl)';
}


}

/// @nodoc
abstract mixin class $RefreshTokenLoginUiStateCopyWith<$Res>  {
  factory $RefreshTokenLoginUiStateCopyWith(RefreshTokenLoginUiState value, $Res Function(RefreshTokenLoginUiState) _then) = _$RefreshTokenLoginUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<Uri>? loginUrl
});




}
/// @nodoc
class _$RefreshTokenLoginUiStateCopyWithImpl<$Res>
    implements $RefreshTokenLoginUiStateCopyWith<$Res> {
  _$RefreshTokenLoginUiStateCopyWithImpl(this._self, this._then);

  final RefreshTokenLoginUiState _self;
  final $Res Function(RefreshTokenLoginUiState) _then;

/// Create a copy of RefreshTokenLoginUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loginUrl = freezed,}) {
  return _then(_self.copyWith(
loginUrl: freezed == loginUrl ? _self.loginUrl : loginUrl // ignore: cast_nullable_to_non_nullable
as AsyncValue<Uri>?,
  ));
}

}


/// Adds pattern-matching-related methods to [RefreshTokenLoginUiState].
extension RefreshTokenLoginUiStatePatterns on RefreshTokenLoginUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RefreshTokenLoginUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RefreshTokenLoginUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RefreshTokenLoginUiState value)  $default,){
final _that = this;
switch (_that) {
case _RefreshTokenLoginUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RefreshTokenLoginUiState value)?  $default,){
final _that = this;
switch (_that) {
case _RefreshTokenLoginUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<Uri>? loginUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RefreshTokenLoginUiState() when $default != null:
return $default(_that.loginUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<Uri>? loginUrl)  $default,) {final _that = this;
switch (_that) {
case _RefreshTokenLoginUiState():
return $default(_that.loginUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<Uri>? loginUrl)?  $default,) {final _that = this;
switch (_that) {
case _RefreshTokenLoginUiState() when $default != null:
return $default(_that.loginUrl);case _:
  return null;

}
}

}

/// @nodoc


class _RefreshTokenLoginUiState implements RefreshTokenLoginUiState {
  const _RefreshTokenLoginUiState({this.loginUrl});
  

@override final  AsyncValue<Uri>? loginUrl;

/// Create a copy of RefreshTokenLoginUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefreshTokenLoginUiStateCopyWith<_RefreshTokenLoginUiState> get copyWith => __$RefreshTokenLoginUiStateCopyWithImpl<_RefreshTokenLoginUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshTokenLoginUiState&&(identical(other.loginUrl, loginUrl) || other.loginUrl == loginUrl));
}


@override
int get hashCode => Object.hash(runtimeType,loginUrl);

@override
String toString() {
  return 'RefreshTokenLoginUiState(loginUrl: $loginUrl)';
}


}

/// @nodoc
abstract mixin class _$RefreshTokenLoginUiStateCopyWith<$Res> implements $RefreshTokenLoginUiStateCopyWith<$Res> {
  factory _$RefreshTokenLoginUiStateCopyWith(_RefreshTokenLoginUiState value, $Res Function(_RefreshTokenLoginUiState) _then) = __$RefreshTokenLoginUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<Uri>? loginUrl
});




}
/// @nodoc
class __$RefreshTokenLoginUiStateCopyWithImpl<$Res>
    implements _$RefreshTokenLoginUiStateCopyWith<$Res> {
  __$RefreshTokenLoginUiStateCopyWithImpl(this._self, this._then);

  final _RefreshTokenLoginUiState _self;
  final $Res Function(_RefreshTokenLoginUiState) _then;

/// Create a copy of RefreshTokenLoginUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loginUrl = freezed,}) {
  return _then(_RefreshTokenLoginUiState(
loginUrl: freezed == loginUrl ? _self.loginUrl : loginUrl // ignore: cast_nullable_to_non_nullable
as AsyncValue<Uri>?,
  ));
}


}

// dart format on
