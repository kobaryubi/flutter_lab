// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adfurikun_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdfurikunUiState {

/// Result of initializing an interstitial ad.
 AsyncValue<Unit>? get initializeInterstitialAd;/// Result of loading an interstitial ad.
 AsyncValue<Unit>? get loadInterstitialAd;/// Result of playing an interstitial ad.
 AsyncValue<Unit>? get playInterstitialAd;/// Result of initializing a reward ad.
 AsyncValue<Unit>? get initializeRewardAd;/// Result of loading a reward ad.
 AsyncValue<Unit>? get loadRewardAd;/// Result of playing a reward ad.
 AsyncValue<Unit>? get playRewardAd;/// Whether the user earned a reward from the last played ad.
 bool get isRewardEarned;
/// Create a copy of AdfurikunUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdfurikunUiStateCopyWith<AdfurikunUiState> get copyWith => _$AdfurikunUiStateCopyWithImpl<AdfurikunUiState>(this as AdfurikunUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdfurikunUiState&&(identical(other.initializeInterstitialAd, initializeInterstitialAd) || other.initializeInterstitialAd == initializeInterstitialAd)&&(identical(other.loadInterstitialAd, loadInterstitialAd) || other.loadInterstitialAd == loadInterstitialAd)&&(identical(other.playInterstitialAd, playInterstitialAd) || other.playInterstitialAd == playInterstitialAd)&&(identical(other.initializeRewardAd, initializeRewardAd) || other.initializeRewardAd == initializeRewardAd)&&(identical(other.loadRewardAd, loadRewardAd) || other.loadRewardAd == loadRewardAd)&&(identical(other.playRewardAd, playRewardAd) || other.playRewardAd == playRewardAd)&&(identical(other.isRewardEarned, isRewardEarned) || other.isRewardEarned == isRewardEarned));
}


@override
int get hashCode => Object.hash(runtimeType,initializeInterstitialAd,loadInterstitialAd,playInterstitialAd,initializeRewardAd,loadRewardAd,playRewardAd,isRewardEarned);

@override
String toString() {
  return 'AdfurikunUiState(initializeInterstitialAd: $initializeInterstitialAd, loadInterstitialAd: $loadInterstitialAd, playInterstitialAd: $playInterstitialAd, initializeRewardAd: $initializeRewardAd, loadRewardAd: $loadRewardAd, playRewardAd: $playRewardAd, isRewardEarned: $isRewardEarned)';
}


}

/// @nodoc
abstract mixin class $AdfurikunUiStateCopyWith<$Res>  {
  factory $AdfurikunUiStateCopyWith(AdfurikunUiState value, $Res Function(AdfurikunUiState) _then) = _$AdfurikunUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<Unit>? initializeInterstitialAd, AsyncValue<Unit>? loadInterstitialAd, AsyncValue<Unit>? playInterstitialAd, AsyncValue<Unit>? initializeRewardAd, AsyncValue<Unit>? loadRewardAd, AsyncValue<Unit>? playRewardAd, bool isRewardEarned
});




}
/// @nodoc
class _$AdfurikunUiStateCopyWithImpl<$Res>
    implements $AdfurikunUiStateCopyWith<$Res> {
  _$AdfurikunUiStateCopyWithImpl(this._self, this._then);

  final AdfurikunUiState _self;
  final $Res Function(AdfurikunUiState) _then;

/// Create a copy of AdfurikunUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? initializeInterstitialAd = freezed,Object? loadInterstitialAd = freezed,Object? playInterstitialAd = freezed,Object? initializeRewardAd = freezed,Object? loadRewardAd = freezed,Object? playRewardAd = freezed,Object? isRewardEarned = null,}) {
  return _then(_self.copyWith(
initializeInterstitialAd: freezed == initializeInterstitialAd ? _self.initializeInterstitialAd : initializeInterstitialAd // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,loadInterstitialAd: freezed == loadInterstitialAd ? _self.loadInterstitialAd : loadInterstitialAd // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,playInterstitialAd: freezed == playInterstitialAd ? _self.playInterstitialAd : playInterstitialAd // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,initializeRewardAd: freezed == initializeRewardAd ? _self.initializeRewardAd : initializeRewardAd // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,loadRewardAd: freezed == loadRewardAd ? _self.loadRewardAd : loadRewardAd // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,playRewardAd: freezed == playRewardAd ? _self.playRewardAd : playRewardAd // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,isRewardEarned: null == isRewardEarned ? _self.isRewardEarned : isRewardEarned // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AdfurikunUiState].
extension AdfurikunUiStatePatterns on AdfurikunUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdfurikunUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdfurikunUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdfurikunUiState value)  $default,){
final _that = this;
switch (_that) {
case _AdfurikunUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdfurikunUiState value)?  $default,){
final _that = this;
switch (_that) {
case _AdfurikunUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<Unit>? initializeInterstitialAd,  AsyncValue<Unit>? loadInterstitialAd,  AsyncValue<Unit>? playInterstitialAd,  AsyncValue<Unit>? initializeRewardAd,  AsyncValue<Unit>? loadRewardAd,  AsyncValue<Unit>? playRewardAd,  bool isRewardEarned)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdfurikunUiState() when $default != null:
return $default(_that.initializeInterstitialAd,_that.loadInterstitialAd,_that.playInterstitialAd,_that.initializeRewardAd,_that.loadRewardAd,_that.playRewardAd,_that.isRewardEarned);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<Unit>? initializeInterstitialAd,  AsyncValue<Unit>? loadInterstitialAd,  AsyncValue<Unit>? playInterstitialAd,  AsyncValue<Unit>? initializeRewardAd,  AsyncValue<Unit>? loadRewardAd,  AsyncValue<Unit>? playRewardAd,  bool isRewardEarned)  $default,) {final _that = this;
switch (_that) {
case _AdfurikunUiState():
return $default(_that.initializeInterstitialAd,_that.loadInterstitialAd,_that.playInterstitialAd,_that.initializeRewardAd,_that.loadRewardAd,_that.playRewardAd,_that.isRewardEarned);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<Unit>? initializeInterstitialAd,  AsyncValue<Unit>? loadInterstitialAd,  AsyncValue<Unit>? playInterstitialAd,  AsyncValue<Unit>? initializeRewardAd,  AsyncValue<Unit>? loadRewardAd,  AsyncValue<Unit>? playRewardAd,  bool isRewardEarned)?  $default,) {final _that = this;
switch (_that) {
case _AdfurikunUiState() when $default != null:
return $default(_that.initializeInterstitialAd,_that.loadInterstitialAd,_that.playInterstitialAd,_that.initializeRewardAd,_that.loadRewardAd,_that.playRewardAd,_that.isRewardEarned);case _:
  return null;

}
}

}

/// @nodoc


class _AdfurikunUiState implements AdfurikunUiState {
  const _AdfurikunUiState({this.initializeInterstitialAd, this.loadInterstitialAd, this.playInterstitialAd, this.initializeRewardAd, this.loadRewardAd, this.playRewardAd, this.isRewardEarned = false});
  

/// Result of initializing an interstitial ad.
@override final  AsyncValue<Unit>? initializeInterstitialAd;
/// Result of loading an interstitial ad.
@override final  AsyncValue<Unit>? loadInterstitialAd;
/// Result of playing an interstitial ad.
@override final  AsyncValue<Unit>? playInterstitialAd;
/// Result of initializing a reward ad.
@override final  AsyncValue<Unit>? initializeRewardAd;
/// Result of loading a reward ad.
@override final  AsyncValue<Unit>? loadRewardAd;
/// Result of playing a reward ad.
@override final  AsyncValue<Unit>? playRewardAd;
/// Whether the user earned a reward from the last played ad.
@override@JsonKey() final  bool isRewardEarned;

/// Create a copy of AdfurikunUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdfurikunUiStateCopyWith<_AdfurikunUiState> get copyWith => __$AdfurikunUiStateCopyWithImpl<_AdfurikunUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdfurikunUiState&&(identical(other.initializeInterstitialAd, initializeInterstitialAd) || other.initializeInterstitialAd == initializeInterstitialAd)&&(identical(other.loadInterstitialAd, loadInterstitialAd) || other.loadInterstitialAd == loadInterstitialAd)&&(identical(other.playInterstitialAd, playInterstitialAd) || other.playInterstitialAd == playInterstitialAd)&&(identical(other.initializeRewardAd, initializeRewardAd) || other.initializeRewardAd == initializeRewardAd)&&(identical(other.loadRewardAd, loadRewardAd) || other.loadRewardAd == loadRewardAd)&&(identical(other.playRewardAd, playRewardAd) || other.playRewardAd == playRewardAd)&&(identical(other.isRewardEarned, isRewardEarned) || other.isRewardEarned == isRewardEarned));
}


@override
int get hashCode => Object.hash(runtimeType,initializeInterstitialAd,loadInterstitialAd,playInterstitialAd,initializeRewardAd,loadRewardAd,playRewardAd,isRewardEarned);

@override
String toString() {
  return 'AdfurikunUiState(initializeInterstitialAd: $initializeInterstitialAd, loadInterstitialAd: $loadInterstitialAd, playInterstitialAd: $playInterstitialAd, initializeRewardAd: $initializeRewardAd, loadRewardAd: $loadRewardAd, playRewardAd: $playRewardAd, isRewardEarned: $isRewardEarned)';
}


}

/// @nodoc
abstract mixin class _$AdfurikunUiStateCopyWith<$Res> implements $AdfurikunUiStateCopyWith<$Res> {
  factory _$AdfurikunUiStateCopyWith(_AdfurikunUiState value, $Res Function(_AdfurikunUiState) _then) = __$AdfurikunUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<Unit>? initializeInterstitialAd, AsyncValue<Unit>? loadInterstitialAd, AsyncValue<Unit>? playInterstitialAd, AsyncValue<Unit>? initializeRewardAd, AsyncValue<Unit>? loadRewardAd, AsyncValue<Unit>? playRewardAd, bool isRewardEarned
});




}
/// @nodoc
class __$AdfurikunUiStateCopyWithImpl<$Res>
    implements _$AdfurikunUiStateCopyWith<$Res> {
  __$AdfurikunUiStateCopyWithImpl(this._self, this._then);

  final _AdfurikunUiState _self;
  final $Res Function(_AdfurikunUiState) _then;

/// Create a copy of AdfurikunUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? initializeInterstitialAd = freezed,Object? loadInterstitialAd = freezed,Object? playInterstitialAd = freezed,Object? initializeRewardAd = freezed,Object? loadRewardAd = freezed,Object? playRewardAd = freezed,Object? isRewardEarned = null,}) {
  return _then(_AdfurikunUiState(
initializeInterstitialAd: freezed == initializeInterstitialAd ? _self.initializeInterstitialAd : initializeInterstitialAd // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,loadInterstitialAd: freezed == loadInterstitialAd ? _self.loadInterstitialAd : loadInterstitialAd // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,playInterstitialAd: freezed == playInterstitialAd ? _self.playInterstitialAd : playInterstitialAd // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,initializeRewardAd: freezed == initializeRewardAd ? _self.initializeRewardAd : initializeRewardAd // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,loadRewardAd: freezed == loadRewardAd ? _self.loadRewardAd : loadRewardAd // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,playRewardAd: freezed == playRewardAd ? _self.playRewardAd : playRewardAd // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,isRewardEarned: null == isRewardEarned ? _self.isRewardEarned : isRewardEarned // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
