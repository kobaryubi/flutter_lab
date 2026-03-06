// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'arutana_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ArutanaUiState {

/// Result of initializing an interstitial ad.
 AsyncValue<void>? get interstitialAd;/// Result of initializing a movie ad.
 AsyncValue<void>? get movieAd;
/// Create a copy of ArutanaUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArutanaUiStateCopyWith<ArutanaUiState> get copyWith => _$ArutanaUiStateCopyWithImpl<ArutanaUiState>(this as ArutanaUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArutanaUiState&&(identical(other.interstitialAd, interstitialAd) || other.interstitialAd == interstitialAd)&&(identical(other.movieAd, movieAd) || other.movieAd == movieAd));
}


@override
int get hashCode => Object.hash(runtimeType,interstitialAd,movieAd);

@override
String toString() {
  return 'ArutanaUiState(interstitialAd: $interstitialAd, movieAd: $movieAd)';
}


}

/// @nodoc
abstract mixin class $ArutanaUiStateCopyWith<$Res>  {
  factory $ArutanaUiStateCopyWith(ArutanaUiState value, $Res Function(ArutanaUiState) _then) = _$ArutanaUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<void>? interstitialAd, AsyncValue<void>? movieAd
});




}
/// @nodoc
class _$ArutanaUiStateCopyWithImpl<$Res>
    implements $ArutanaUiStateCopyWith<$Res> {
  _$ArutanaUiStateCopyWithImpl(this._self, this._then);

  final ArutanaUiState _self;
  final $Res Function(ArutanaUiState) _then;

/// Create a copy of ArutanaUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? interstitialAd = freezed,Object? movieAd = freezed,}) {
  return _then(_self.copyWith(
interstitialAd: freezed == interstitialAd ? _self.interstitialAd : interstitialAd // ignore: cast_nullable_to_non_nullable
as AsyncValue<void>?,movieAd: freezed == movieAd ? _self.movieAd : movieAd // ignore: cast_nullable_to_non_nullable
as AsyncValue<void>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ArutanaUiState].
extension ArutanaUiStatePatterns on ArutanaUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArutanaUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArutanaUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArutanaUiState value)  $default,){
final _that = this;
switch (_that) {
case _ArutanaUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArutanaUiState value)?  $default,){
final _that = this;
switch (_that) {
case _ArutanaUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<void>? interstitialAd,  AsyncValue<void>? movieAd)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArutanaUiState() when $default != null:
return $default(_that.interstitialAd,_that.movieAd);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<void>? interstitialAd,  AsyncValue<void>? movieAd)  $default,) {final _that = this;
switch (_that) {
case _ArutanaUiState():
return $default(_that.interstitialAd,_that.movieAd);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<void>? interstitialAd,  AsyncValue<void>? movieAd)?  $default,) {final _that = this;
switch (_that) {
case _ArutanaUiState() when $default != null:
return $default(_that.interstitialAd,_that.movieAd);case _:
  return null;

}
}

}

/// @nodoc


class _ArutanaUiState implements ArutanaUiState {
  const _ArutanaUiState({this.interstitialAd, this.movieAd});
  

/// Result of initializing an interstitial ad.
@override final  AsyncValue<void>? interstitialAd;
/// Result of initializing a movie ad.
@override final  AsyncValue<void>? movieAd;

/// Create a copy of ArutanaUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArutanaUiStateCopyWith<_ArutanaUiState> get copyWith => __$ArutanaUiStateCopyWithImpl<_ArutanaUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArutanaUiState&&(identical(other.interstitialAd, interstitialAd) || other.interstitialAd == interstitialAd)&&(identical(other.movieAd, movieAd) || other.movieAd == movieAd));
}


@override
int get hashCode => Object.hash(runtimeType,interstitialAd,movieAd);

@override
String toString() {
  return 'ArutanaUiState(interstitialAd: $interstitialAd, movieAd: $movieAd)';
}


}

/// @nodoc
abstract mixin class _$ArutanaUiStateCopyWith<$Res> implements $ArutanaUiStateCopyWith<$Res> {
  factory _$ArutanaUiStateCopyWith(_ArutanaUiState value, $Res Function(_ArutanaUiState) _then) = __$ArutanaUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<void>? interstitialAd, AsyncValue<void>? movieAd
});




}
/// @nodoc
class __$ArutanaUiStateCopyWithImpl<$Res>
    implements _$ArutanaUiStateCopyWith<$Res> {
  __$ArutanaUiStateCopyWithImpl(this._self, this._then);

  final _ArutanaUiState _self;
  final $Res Function(_ArutanaUiState) _then;

/// Create a copy of ArutanaUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? interstitialAd = freezed,Object? movieAd = freezed,}) {
  return _then(_ArutanaUiState(
interstitialAd: freezed == interstitialAd ? _self.interstitialAd : interstitialAd // ignore: cast_nullable_to_non_nullable
as AsyncValue<void>?,movieAd: freezed == movieAd ? _self.movieAd : movieAd // ignore: cast_nullable_to_non_nullable
as AsyncValue<void>?,
  ));
}


}

// dart format on
