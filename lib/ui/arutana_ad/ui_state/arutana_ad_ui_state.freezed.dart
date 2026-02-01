// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'arutana_ad_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ArutanaAdUiState {

 String get interstitialStatus; String get movieStatus; bool get isInterstitialLoading; bool get isMovieLoading;
/// Create a copy of ArutanaAdUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArutanaAdUiStateCopyWith<ArutanaAdUiState> get copyWith => _$ArutanaAdUiStateCopyWithImpl<ArutanaAdUiState>(this as ArutanaAdUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArutanaAdUiState&&(identical(other.interstitialStatus, interstitialStatus) || other.interstitialStatus == interstitialStatus)&&(identical(other.movieStatus, movieStatus) || other.movieStatus == movieStatus)&&(identical(other.isInterstitialLoading, isInterstitialLoading) || other.isInterstitialLoading == isInterstitialLoading)&&(identical(other.isMovieLoading, isMovieLoading) || other.isMovieLoading == isMovieLoading));
}


@override
int get hashCode => Object.hash(runtimeType,interstitialStatus,movieStatus,isInterstitialLoading,isMovieLoading);

@override
String toString() {
  return 'ArutanaAdUiState(interstitialStatus: $interstitialStatus, movieStatus: $movieStatus, isInterstitialLoading: $isInterstitialLoading, isMovieLoading: $isMovieLoading)';
}


}

/// @nodoc
abstract mixin class $ArutanaAdUiStateCopyWith<$Res>  {
  factory $ArutanaAdUiStateCopyWith(ArutanaAdUiState value, $Res Function(ArutanaAdUiState) _then) = _$ArutanaAdUiStateCopyWithImpl;
@useResult
$Res call({
 String interstitialStatus, String movieStatus, bool isInterstitialLoading, bool isMovieLoading
});




}
/// @nodoc
class _$ArutanaAdUiStateCopyWithImpl<$Res>
    implements $ArutanaAdUiStateCopyWith<$Res> {
  _$ArutanaAdUiStateCopyWithImpl(this._self, this._then);

  final ArutanaAdUiState _self;
  final $Res Function(ArutanaAdUiState) _then;

/// Create a copy of ArutanaAdUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? interstitialStatus = null,Object? movieStatus = null,Object? isInterstitialLoading = null,Object? isMovieLoading = null,}) {
  return _then(_self.copyWith(
interstitialStatus: null == interstitialStatus ? _self.interstitialStatus : interstitialStatus // ignore: cast_nullable_to_non_nullable
as String,movieStatus: null == movieStatus ? _self.movieStatus : movieStatus // ignore: cast_nullable_to_non_nullable
as String,isInterstitialLoading: null == isInterstitialLoading ? _self.isInterstitialLoading : isInterstitialLoading // ignore: cast_nullable_to_non_nullable
as bool,isMovieLoading: null == isMovieLoading ? _self.isMovieLoading : isMovieLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ArutanaAdUiState].
extension ArutanaAdUiStatePatterns on ArutanaAdUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArutanaAdUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArutanaAdUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArutanaAdUiState value)  $default,){
final _that = this;
switch (_that) {
case _ArutanaAdUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArutanaAdUiState value)?  $default,){
final _that = this;
switch (_that) {
case _ArutanaAdUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String interstitialStatus,  String movieStatus,  bool isInterstitialLoading,  bool isMovieLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArutanaAdUiState() when $default != null:
return $default(_that.interstitialStatus,_that.movieStatus,_that.isInterstitialLoading,_that.isMovieLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String interstitialStatus,  String movieStatus,  bool isInterstitialLoading,  bool isMovieLoading)  $default,) {final _that = this;
switch (_that) {
case _ArutanaAdUiState():
return $default(_that.interstitialStatus,_that.movieStatus,_that.isInterstitialLoading,_that.isMovieLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String interstitialStatus,  String movieStatus,  bool isInterstitialLoading,  bool isMovieLoading)?  $default,) {final _that = this;
switch (_that) {
case _ArutanaAdUiState() when $default != null:
return $default(_that.interstitialStatus,_that.movieStatus,_that.isInterstitialLoading,_that.isMovieLoading);case _:
  return null;

}
}

}

/// @nodoc


class _ArutanaAdUiState implements ArutanaAdUiState {
  const _ArutanaAdUiState({required this.interstitialStatus, required this.movieStatus, required this.isInterstitialLoading, required this.isMovieLoading});
  

@override final  String interstitialStatus;
@override final  String movieStatus;
@override final  bool isInterstitialLoading;
@override final  bool isMovieLoading;

/// Create a copy of ArutanaAdUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArutanaAdUiStateCopyWith<_ArutanaAdUiState> get copyWith => __$ArutanaAdUiStateCopyWithImpl<_ArutanaAdUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArutanaAdUiState&&(identical(other.interstitialStatus, interstitialStatus) || other.interstitialStatus == interstitialStatus)&&(identical(other.movieStatus, movieStatus) || other.movieStatus == movieStatus)&&(identical(other.isInterstitialLoading, isInterstitialLoading) || other.isInterstitialLoading == isInterstitialLoading)&&(identical(other.isMovieLoading, isMovieLoading) || other.isMovieLoading == isMovieLoading));
}


@override
int get hashCode => Object.hash(runtimeType,interstitialStatus,movieStatus,isInterstitialLoading,isMovieLoading);

@override
String toString() {
  return 'ArutanaAdUiState(interstitialStatus: $interstitialStatus, movieStatus: $movieStatus, isInterstitialLoading: $isInterstitialLoading, isMovieLoading: $isMovieLoading)';
}


}

/// @nodoc
abstract mixin class _$ArutanaAdUiStateCopyWith<$Res> implements $ArutanaAdUiStateCopyWith<$Res> {
  factory _$ArutanaAdUiStateCopyWith(_ArutanaAdUiState value, $Res Function(_ArutanaAdUiState) _then) = __$ArutanaAdUiStateCopyWithImpl;
@override @useResult
$Res call({
 String interstitialStatus, String movieStatus, bool isInterstitialLoading, bool isMovieLoading
});




}
/// @nodoc
class __$ArutanaAdUiStateCopyWithImpl<$Res>
    implements _$ArutanaAdUiStateCopyWith<$Res> {
  __$ArutanaAdUiStateCopyWithImpl(this._self, this._then);

  final _ArutanaAdUiState _self;
  final $Res Function(_ArutanaAdUiState) _then;

/// Create a copy of ArutanaAdUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? interstitialStatus = null,Object? movieStatus = null,Object? isInterstitialLoading = null,Object? isMovieLoading = null,}) {
  return _then(_ArutanaAdUiState(
interstitialStatus: null == interstitialStatus ? _self.interstitialStatus : interstitialStatus // ignore: cast_nullable_to_non_nullable
as String,movieStatus: null == movieStatus ? _self.movieStatus : movieStatus // ignore: cast_nullable_to_non_nullable
as String,isInterstitialLoading: null == isInterstitialLoading ? _self.isInterstitialLoading : isInterstitialLoading // ignore: cast_nullable_to_non_nullable
as bool,isMovieLoading: null == isMovieLoading ? _self.isMovieLoading : isMovieLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
