// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_token_my_page_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RefreshTokenMyPageUiState {

 AsyncValue<UserProfile>? get userProfile; AsyncValue<Uri>? get refreshLoginUrl;
/// Create a copy of RefreshTokenMyPageUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefreshTokenMyPageUiStateCopyWith<RefreshTokenMyPageUiState> get copyWith => _$RefreshTokenMyPageUiStateCopyWithImpl<RefreshTokenMyPageUiState>(this as RefreshTokenMyPageUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshTokenMyPageUiState&&(identical(other.userProfile, userProfile) || other.userProfile == userProfile)&&(identical(other.refreshLoginUrl, refreshLoginUrl) || other.refreshLoginUrl == refreshLoginUrl));
}


@override
int get hashCode => Object.hash(runtimeType,userProfile,refreshLoginUrl);

@override
String toString() {
  return 'RefreshTokenMyPageUiState(userProfile: $userProfile, refreshLoginUrl: $refreshLoginUrl)';
}


}

/// @nodoc
abstract mixin class $RefreshTokenMyPageUiStateCopyWith<$Res>  {
  factory $RefreshTokenMyPageUiStateCopyWith(RefreshTokenMyPageUiState value, $Res Function(RefreshTokenMyPageUiState) _then) = _$RefreshTokenMyPageUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<UserProfile>? userProfile, AsyncValue<Uri>? refreshLoginUrl
});




}
/// @nodoc
class _$RefreshTokenMyPageUiStateCopyWithImpl<$Res>
    implements $RefreshTokenMyPageUiStateCopyWith<$Res> {
  _$RefreshTokenMyPageUiStateCopyWithImpl(this._self, this._then);

  final RefreshTokenMyPageUiState _self;
  final $Res Function(RefreshTokenMyPageUiState) _then;

/// Create a copy of RefreshTokenMyPageUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userProfile = freezed,Object? refreshLoginUrl = freezed,}) {
  return _then(_self.copyWith(
userProfile: freezed == userProfile ? _self.userProfile : userProfile // ignore: cast_nullable_to_non_nullable
as AsyncValue<UserProfile>?,refreshLoginUrl: freezed == refreshLoginUrl ? _self.refreshLoginUrl : refreshLoginUrl // ignore: cast_nullable_to_non_nullable
as AsyncValue<Uri>?,
  ));
}

}


/// Adds pattern-matching-related methods to [RefreshTokenMyPageUiState].
extension RefreshTokenMyPageUiStatePatterns on RefreshTokenMyPageUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RefreshTokenMyPageUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RefreshTokenMyPageUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RefreshTokenMyPageUiState value)  $default,){
final _that = this;
switch (_that) {
case _RefreshTokenMyPageUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RefreshTokenMyPageUiState value)?  $default,){
final _that = this;
switch (_that) {
case _RefreshTokenMyPageUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<UserProfile>? userProfile,  AsyncValue<Uri>? refreshLoginUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RefreshTokenMyPageUiState() when $default != null:
return $default(_that.userProfile,_that.refreshLoginUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<UserProfile>? userProfile,  AsyncValue<Uri>? refreshLoginUrl)  $default,) {final _that = this;
switch (_that) {
case _RefreshTokenMyPageUiState():
return $default(_that.userProfile,_that.refreshLoginUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<UserProfile>? userProfile,  AsyncValue<Uri>? refreshLoginUrl)?  $default,) {final _that = this;
switch (_that) {
case _RefreshTokenMyPageUiState() when $default != null:
return $default(_that.userProfile,_that.refreshLoginUrl);case _:
  return null;

}
}

}

/// @nodoc


class _RefreshTokenMyPageUiState implements RefreshTokenMyPageUiState {
  const _RefreshTokenMyPageUiState({this.userProfile, this.refreshLoginUrl});
  

@override final  AsyncValue<UserProfile>? userProfile;
@override final  AsyncValue<Uri>? refreshLoginUrl;

/// Create a copy of RefreshTokenMyPageUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefreshTokenMyPageUiStateCopyWith<_RefreshTokenMyPageUiState> get copyWith => __$RefreshTokenMyPageUiStateCopyWithImpl<_RefreshTokenMyPageUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshTokenMyPageUiState&&(identical(other.userProfile, userProfile) || other.userProfile == userProfile)&&(identical(other.refreshLoginUrl, refreshLoginUrl) || other.refreshLoginUrl == refreshLoginUrl));
}


@override
int get hashCode => Object.hash(runtimeType,userProfile,refreshLoginUrl);

@override
String toString() {
  return 'RefreshTokenMyPageUiState(userProfile: $userProfile, refreshLoginUrl: $refreshLoginUrl)';
}


}

/// @nodoc
abstract mixin class _$RefreshTokenMyPageUiStateCopyWith<$Res> implements $RefreshTokenMyPageUiStateCopyWith<$Res> {
  factory _$RefreshTokenMyPageUiStateCopyWith(_RefreshTokenMyPageUiState value, $Res Function(_RefreshTokenMyPageUiState) _then) = __$RefreshTokenMyPageUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<UserProfile>? userProfile, AsyncValue<Uri>? refreshLoginUrl
});




}
/// @nodoc
class __$RefreshTokenMyPageUiStateCopyWithImpl<$Res>
    implements _$RefreshTokenMyPageUiStateCopyWith<$Res> {
  __$RefreshTokenMyPageUiStateCopyWithImpl(this._self, this._then);

  final _RefreshTokenMyPageUiState _self;
  final $Res Function(_RefreshTokenMyPageUiState) _then;

/// Create a copy of RefreshTokenMyPageUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userProfile = freezed,Object? refreshLoginUrl = freezed,}) {
  return _then(_RefreshTokenMyPageUiState(
userProfile: freezed == userProfile ? _self.userProfile : userProfile // ignore: cast_nullable_to_non_nullable
as AsyncValue<UserProfile>?,refreshLoginUrl: freezed == refreshLoginUrl ? _self.refreshLoginUrl : refreshLoginUrl // ignore: cast_nullable_to_non_nullable
as AsyncValue<Uri>?,
  ));
}


}

// dart format on
