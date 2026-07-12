// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_token_login_web_view_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RefreshTokenLoginWebViewUiState {

 AsyncValue<Unit>? get saveAccessToken;
/// Create a copy of RefreshTokenLoginWebViewUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefreshTokenLoginWebViewUiStateCopyWith<RefreshTokenLoginWebViewUiState> get copyWith => _$RefreshTokenLoginWebViewUiStateCopyWithImpl<RefreshTokenLoginWebViewUiState>(this as RefreshTokenLoginWebViewUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshTokenLoginWebViewUiState&&(identical(other.saveAccessToken, saveAccessToken) || other.saveAccessToken == saveAccessToken));
}


@override
int get hashCode => Object.hash(runtimeType,saveAccessToken);

@override
String toString() {
  return 'RefreshTokenLoginWebViewUiState(saveAccessToken: $saveAccessToken)';
}


}

/// @nodoc
abstract mixin class $RefreshTokenLoginWebViewUiStateCopyWith<$Res>  {
  factory $RefreshTokenLoginWebViewUiStateCopyWith(RefreshTokenLoginWebViewUiState value, $Res Function(RefreshTokenLoginWebViewUiState) _then) = _$RefreshTokenLoginWebViewUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<Unit>? saveAccessToken
});




}
/// @nodoc
class _$RefreshTokenLoginWebViewUiStateCopyWithImpl<$Res>
    implements $RefreshTokenLoginWebViewUiStateCopyWith<$Res> {
  _$RefreshTokenLoginWebViewUiStateCopyWithImpl(this._self, this._then);

  final RefreshTokenLoginWebViewUiState _self;
  final $Res Function(RefreshTokenLoginWebViewUiState) _then;

/// Create a copy of RefreshTokenLoginWebViewUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? saveAccessToken = freezed,}) {
  return _then(_self.copyWith(
saveAccessToken: freezed == saveAccessToken ? _self.saveAccessToken : saveAccessToken // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,
  ));
}

}


/// Adds pattern-matching-related methods to [RefreshTokenLoginWebViewUiState].
extension RefreshTokenLoginWebViewUiStatePatterns on RefreshTokenLoginWebViewUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RefreshTokenLoginWebViewUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RefreshTokenLoginWebViewUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RefreshTokenLoginWebViewUiState value)  $default,){
final _that = this;
switch (_that) {
case _RefreshTokenLoginWebViewUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RefreshTokenLoginWebViewUiState value)?  $default,){
final _that = this;
switch (_that) {
case _RefreshTokenLoginWebViewUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<Unit>? saveAccessToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RefreshTokenLoginWebViewUiState() when $default != null:
return $default(_that.saveAccessToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<Unit>? saveAccessToken)  $default,) {final _that = this;
switch (_that) {
case _RefreshTokenLoginWebViewUiState():
return $default(_that.saveAccessToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<Unit>? saveAccessToken)?  $default,) {final _that = this;
switch (_that) {
case _RefreshTokenLoginWebViewUiState() when $default != null:
return $default(_that.saveAccessToken);case _:
  return null;

}
}

}

/// @nodoc


class _RefreshTokenLoginWebViewUiState implements RefreshTokenLoginWebViewUiState {
  const _RefreshTokenLoginWebViewUiState({this.saveAccessToken});
  

@override final  AsyncValue<Unit>? saveAccessToken;

/// Create a copy of RefreshTokenLoginWebViewUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefreshTokenLoginWebViewUiStateCopyWith<_RefreshTokenLoginWebViewUiState> get copyWith => __$RefreshTokenLoginWebViewUiStateCopyWithImpl<_RefreshTokenLoginWebViewUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshTokenLoginWebViewUiState&&(identical(other.saveAccessToken, saveAccessToken) || other.saveAccessToken == saveAccessToken));
}


@override
int get hashCode => Object.hash(runtimeType,saveAccessToken);

@override
String toString() {
  return 'RefreshTokenLoginWebViewUiState(saveAccessToken: $saveAccessToken)';
}


}

/// @nodoc
abstract mixin class _$RefreshTokenLoginWebViewUiStateCopyWith<$Res> implements $RefreshTokenLoginWebViewUiStateCopyWith<$Res> {
  factory _$RefreshTokenLoginWebViewUiStateCopyWith(_RefreshTokenLoginWebViewUiState value, $Res Function(_RefreshTokenLoginWebViewUiState) _then) = __$RefreshTokenLoginWebViewUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<Unit>? saveAccessToken
});




}
/// @nodoc
class __$RefreshTokenLoginWebViewUiStateCopyWithImpl<$Res>
    implements _$RefreshTokenLoginWebViewUiStateCopyWith<$Res> {
  __$RefreshTokenLoginWebViewUiStateCopyWithImpl(this._self, this._then);

  final _RefreshTokenLoginWebViewUiState _self;
  final $Res Function(_RefreshTokenLoginWebViewUiState) _then;

/// Create a copy of RefreshTokenLoginWebViewUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? saveAccessToken = freezed,}) {
  return _then(_RefreshTokenLoginWebViewUiState(
saveAccessToken: freezed == saveAccessToken ? _self.saveAccessToken : saveAccessToken // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,
  ));
}


}

// dart format on
