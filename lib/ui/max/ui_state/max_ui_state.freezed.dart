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

/// Result of loading a rewarded ad.
 AsyncValue<Unit>? get loadRewardedAd;/// Result of showing a rewarded ad.
 AsyncValue<Unit>? get showRewardedAd;/// Whether the user earned a reward from the last shown ad.
 bool get isRewardEarned;
/// Create a copy of MaxUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaxUiStateCopyWith<MaxUiState> get copyWith => _$MaxUiStateCopyWithImpl<MaxUiState>(this as MaxUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaxUiState&&(identical(other.loadRewardedAd, loadRewardedAd) || other.loadRewardedAd == loadRewardedAd)&&(identical(other.showRewardedAd, showRewardedAd) || other.showRewardedAd == showRewardedAd)&&(identical(other.isRewardEarned, isRewardEarned) || other.isRewardEarned == isRewardEarned));
}


@override
int get hashCode => Object.hash(runtimeType,loadRewardedAd,showRewardedAd,isRewardEarned);

@override
String toString() {
  return 'MaxUiState(loadRewardedAd: $loadRewardedAd, showRewardedAd: $showRewardedAd, isRewardEarned: $isRewardEarned)';
}


}

/// @nodoc
abstract mixin class $MaxUiStateCopyWith<$Res>  {
  factory $MaxUiStateCopyWith(MaxUiState value, $Res Function(MaxUiState) _then) = _$MaxUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<Unit>? loadRewardedAd, AsyncValue<Unit>? showRewardedAd, bool isRewardEarned
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
@pragma('vm:prefer-inline') @override $Res call({Object? loadRewardedAd = freezed,Object? showRewardedAd = freezed,Object? isRewardEarned = null,}) {
  return _then(_self.copyWith(
loadRewardedAd: freezed == loadRewardedAd ? _self.loadRewardedAd : loadRewardedAd // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,showRewardedAd: freezed == showRewardedAd ? _self.showRewardedAd : showRewardedAd // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,isRewardEarned: null == isRewardEarned ? _self.isRewardEarned : isRewardEarned // ignore: cast_nullable_to_non_nullable
as bool,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<Unit>? loadRewardedAd,  AsyncValue<Unit>? showRewardedAd,  bool isRewardEarned)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MaxUiState() when $default != null:
return $default(_that.loadRewardedAd,_that.showRewardedAd,_that.isRewardEarned);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<Unit>? loadRewardedAd,  AsyncValue<Unit>? showRewardedAd,  bool isRewardEarned)  $default,) {final _that = this;
switch (_that) {
case _MaxUiState():
return $default(_that.loadRewardedAd,_that.showRewardedAd,_that.isRewardEarned);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<Unit>? loadRewardedAd,  AsyncValue<Unit>? showRewardedAd,  bool isRewardEarned)?  $default,) {final _that = this;
switch (_that) {
case _MaxUiState() when $default != null:
return $default(_that.loadRewardedAd,_that.showRewardedAd,_that.isRewardEarned);case _:
  return null;

}
}

}

/// @nodoc


class _MaxUiState implements MaxUiState {
  const _MaxUiState({this.loadRewardedAd, this.showRewardedAd, this.isRewardEarned = false});
  

/// Result of loading a rewarded ad.
@override final  AsyncValue<Unit>? loadRewardedAd;
/// Result of showing a rewarded ad.
@override final  AsyncValue<Unit>? showRewardedAd;
/// Whether the user earned a reward from the last shown ad.
@override@JsonKey() final  bool isRewardEarned;

/// Create a copy of MaxUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaxUiStateCopyWith<_MaxUiState> get copyWith => __$MaxUiStateCopyWithImpl<_MaxUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaxUiState&&(identical(other.loadRewardedAd, loadRewardedAd) || other.loadRewardedAd == loadRewardedAd)&&(identical(other.showRewardedAd, showRewardedAd) || other.showRewardedAd == showRewardedAd)&&(identical(other.isRewardEarned, isRewardEarned) || other.isRewardEarned == isRewardEarned));
}


@override
int get hashCode => Object.hash(runtimeType,loadRewardedAd,showRewardedAd,isRewardEarned);

@override
String toString() {
  return 'MaxUiState(loadRewardedAd: $loadRewardedAd, showRewardedAd: $showRewardedAd, isRewardEarned: $isRewardEarned)';
}


}

/// @nodoc
abstract mixin class _$MaxUiStateCopyWith<$Res> implements $MaxUiStateCopyWith<$Res> {
  factory _$MaxUiStateCopyWith(_MaxUiState value, $Res Function(_MaxUiState) _then) = __$MaxUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<Unit>? loadRewardedAd, AsyncValue<Unit>? showRewardedAd, bool isRewardEarned
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
@override @pragma('vm:prefer-inline') $Res call({Object? loadRewardedAd = freezed,Object? showRewardedAd = freezed,Object? isRewardEarned = null,}) {
  return _then(_MaxUiState(
loadRewardedAd: freezed == loadRewardedAd ? _self.loadRewardedAd : loadRewardedAd // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,showRewardedAd: freezed == showRewardedAd ? _self.showRewardedAd : showRewardedAd // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,isRewardEarned: null == isRewardEarned ? _self.isRewardEarned : isRewardEarned // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
