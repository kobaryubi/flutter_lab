// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'max_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MaxUiState {

/// Result of SDK initialization.
 AsyncValue<Unit>? get initialization;/// Result of loading a rewarded ad.
 AsyncValue<Unit>? get loadRewardedAd;/// Whether a rewarded ad is ready to be shown.
 AsyncValue<bool>? get isRewardedAdReady;/// Result of showing a rewarded ad.
///
/// `true` if the user earned a reward.
 AsyncValue<bool>? get showRewardedAd;
/// Create a copy of MaxUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaxUiStateCopyWith<MaxUiState> get copyWith => _$MaxUiStateCopyWithImpl<MaxUiState>(this as MaxUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaxUiState&&(identical(other.initialization, initialization) || other.initialization == initialization)&&(identical(other.loadRewardedAd, loadRewardedAd) || other.loadRewardedAd == loadRewardedAd)&&(identical(other.isRewardedAdReady, isRewardedAdReady) || other.isRewardedAdReady == isRewardedAdReady)&&(identical(other.showRewardedAd, showRewardedAd) || other.showRewardedAd == showRewardedAd));
}


@override
int get hashCode => Object.hash(runtimeType,initialization,loadRewardedAd,isRewardedAdReady,showRewardedAd);

@override
String toString() {
  return 'MaxUiState(initialization: $initialization, loadRewardedAd: $loadRewardedAd, isRewardedAdReady: $isRewardedAdReady, showRewardedAd: $showRewardedAd)';
}


}

/// @nodoc
abstract mixin class $MaxUiStateCopyWith<$Res>  {
  factory $MaxUiStateCopyWith(MaxUiState value, $Res Function(MaxUiState) _then) = _$MaxUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<Unit>? initialization, AsyncValue<Unit>? loadRewardedAd, AsyncValue<bool>? isRewardedAdReady, AsyncValue<bool>? showRewardedAd
});




}
/// @nodoc
class _$MaxUiStateCopyWithImpl<$Res>
    implements $MaxUiStateCopyWith<$Res> {
  _$MaxUiStateCopyWithImpl(this._self, this._then);

  final MaxUiState _self;
  final $Res Function(MaxUiState) _then;

/// Create a copy of MaxUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? initialization = freezed,Object? loadRewardedAd = freezed,Object? isRewardedAdReady = freezed,Object? showRewardedAd = freezed,}) {
  return _then(_self.copyWith(
initialization: freezed == initialization ? _self.initialization : initialization // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,loadRewardedAd: freezed == loadRewardedAd ? _self.loadRewardedAd : loadRewardedAd // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,isRewardedAdReady: freezed == isRewardedAdReady ? _self.isRewardedAdReady : isRewardedAdReady // ignore: cast_nullable_to_non_nullable
as AsyncValue<bool>?,showRewardedAd: freezed == showRewardedAd ? _self.showRewardedAd : showRewardedAd // ignore: cast_nullable_to_non_nullable
as AsyncValue<bool>?,
  ));
}

}


/// Adds pattern-matching-related methods to [MaxUiState].
extension MaxUiStatePatterns on MaxUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MaxUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MaxUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MaxUiState value)  $default,){
final _that = this;
switch (_that) {
case _MaxUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MaxUiState value)?  $default,){
final _that = this;
switch (_that) {
case _MaxUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<Unit>? initialization,  AsyncValue<Unit>? loadRewardedAd,  AsyncValue<bool>? isRewardedAdReady,  AsyncValue<bool>? showRewardedAd)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MaxUiState() when $default != null:
return $default(_that.initialization,_that.loadRewardedAd,_that.isRewardedAdReady,_that.showRewardedAd);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<Unit>? initialization,  AsyncValue<Unit>? loadRewardedAd,  AsyncValue<bool>? isRewardedAdReady,  AsyncValue<bool>? showRewardedAd)  $default,) {final _that = this;
switch (_that) {
case _MaxUiState():
return $default(_that.initialization,_that.loadRewardedAd,_that.isRewardedAdReady,_that.showRewardedAd);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<Unit>? initialization,  AsyncValue<Unit>? loadRewardedAd,  AsyncValue<bool>? isRewardedAdReady,  AsyncValue<bool>? showRewardedAd)?  $default,) {final _that = this;
switch (_that) {
case _MaxUiState() when $default != null:
return $default(_that.initialization,_that.loadRewardedAd,_that.isRewardedAdReady,_that.showRewardedAd);case _:
  return null;

}
}

}

/// @nodoc


class _MaxUiState implements MaxUiState {
  const _MaxUiState({this.initialization, this.loadRewardedAd, this.isRewardedAdReady, this.showRewardedAd});
  

/// Result of SDK initialization.
@override final  AsyncValue<Unit>? initialization;
/// Result of loading a rewarded ad.
@override final  AsyncValue<Unit>? loadRewardedAd;
/// Whether a rewarded ad is ready to be shown.
@override final  AsyncValue<bool>? isRewardedAdReady;
/// Result of showing a rewarded ad.
///
/// `true` if the user earned a reward.
@override final  AsyncValue<bool>? showRewardedAd;

/// Create a copy of MaxUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaxUiStateCopyWith<_MaxUiState> get copyWith => __$MaxUiStateCopyWithImpl<_MaxUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaxUiState&&(identical(other.initialization, initialization) || other.initialization == initialization)&&(identical(other.loadRewardedAd, loadRewardedAd) || other.loadRewardedAd == loadRewardedAd)&&(identical(other.isRewardedAdReady, isRewardedAdReady) || other.isRewardedAdReady == isRewardedAdReady)&&(identical(other.showRewardedAd, showRewardedAd) || other.showRewardedAd == showRewardedAd));
}


@override
int get hashCode => Object.hash(runtimeType,initialization,loadRewardedAd,isRewardedAdReady,showRewardedAd);

@override
String toString() {
  return 'MaxUiState(initialization: $initialization, loadRewardedAd: $loadRewardedAd, isRewardedAdReady: $isRewardedAdReady, showRewardedAd: $showRewardedAd)';
}


}

/// @nodoc
abstract mixin class _$MaxUiStateCopyWith<$Res> implements $MaxUiStateCopyWith<$Res> {
  factory _$MaxUiStateCopyWith(_MaxUiState value, $Res Function(_MaxUiState) _then) = __$MaxUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<Unit>? initialization, AsyncValue<Unit>? loadRewardedAd, AsyncValue<bool>? isRewardedAdReady, AsyncValue<bool>? showRewardedAd
});




}
/// @nodoc
class __$MaxUiStateCopyWithImpl<$Res>
    implements _$MaxUiStateCopyWith<$Res> {
  __$MaxUiStateCopyWithImpl(this._self, this._then);

  final _MaxUiState _self;
  final $Res Function(_MaxUiState) _then;

/// Create a copy of MaxUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? initialization = freezed,Object? loadRewardedAd = freezed,Object? isRewardedAdReady = freezed,Object? showRewardedAd = freezed,}) {
  return _then(_MaxUiState(
initialization: freezed == initialization ? _self.initialization : initialization // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,loadRewardedAd: freezed == loadRewardedAd ? _self.loadRewardedAd : loadRewardedAd // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,isRewardedAdReady: freezed == isRewardedAdReady ? _self.isRewardedAdReady : isRewardedAdReady // ignore: cast_nullable_to_non_nullable
as AsyncValue<bool>?,showRewardedAd: freezed == showRewardedAd ? _self.showRewardedAd : showRewardedAd // ignore: cast_nullable_to_non_nullable
as AsyncValue<bool>?,
  ));
}


}

// dart format on
