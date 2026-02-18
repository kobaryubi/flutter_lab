// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'etag_cache_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EtagCacheUiState {

 AsyncValue<EtagCachedResponse> get withEtagResponse; AsyncValue<EtagCachedResponse> get withoutEtagResponse;
/// Create a copy of EtagCacheUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EtagCacheUiStateCopyWith<EtagCacheUiState> get copyWith => _$EtagCacheUiStateCopyWithImpl<EtagCacheUiState>(this as EtagCacheUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EtagCacheUiState&&(identical(other.withEtagResponse, withEtagResponse) || other.withEtagResponse == withEtagResponse)&&(identical(other.withoutEtagResponse, withoutEtagResponse) || other.withoutEtagResponse == withoutEtagResponse));
}


@override
int get hashCode => Object.hash(runtimeType,withEtagResponse,withoutEtagResponse);

@override
String toString() {
  return 'EtagCacheUiState(withEtagResponse: $withEtagResponse, withoutEtagResponse: $withoutEtagResponse)';
}


}

/// @nodoc
abstract mixin class $EtagCacheUiStateCopyWith<$Res>  {
  factory $EtagCacheUiStateCopyWith(EtagCacheUiState value, $Res Function(EtagCacheUiState) _then) = _$EtagCacheUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<EtagCachedResponse> withEtagResponse, AsyncValue<EtagCachedResponse> withoutEtagResponse
});




}
/// @nodoc
class _$EtagCacheUiStateCopyWithImpl<$Res>
    implements $EtagCacheUiStateCopyWith<$Res> {
  _$EtagCacheUiStateCopyWithImpl(this._self, this._then);

  final EtagCacheUiState _self;
  final $Res Function(EtagCacheUiState) _then;

/// Create a copy of EtagCacheUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? withEtagResponse = null,Object? withoutEtagResponse = null,}) {
  return _then(_self.copyWith(
withEtagResponse: null == withEtagResponse ? _self.withEtagResponse : withEtagResponse // ignore: cast_nullable_to_non_nullable
as AsyncValue<EtagCachedResponse>,withoutEtagResponse: null == withoutEtagResponse ? _self.withoutEtagResponse : withoutEtagResponse // ignore: cast_nullable_to_non_nullable
as AsyncValue<EtagCachedResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [EtagCacheUiState].
extension EtagCacheUiStatePatterns on EtagCacheUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EtagCacheUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EtagCacheUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EtagCacheUiState value)  $default,){
final _that = this;
switch (_that) {
case _EtagCacheUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EtagCacheUiState value)?  $default,){
final _that = this;
switch (_that) {
case _EtagCacheUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<EtagCachedResponse> withEtagResponse,  AsyncValue<EtagCachedResponse> withoutEtagResponse)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EtagCacheUiState() when $default != null:
return $default(_that.withEtagResponse,_that.withoutEtagResponse);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<EtagCachedResponse> withEtagResponse,  AsyncValue<EtagCachedResponse> withoutEtagResponse)  $default,) {final _that = this;
switch (_that) {
case _EtagCacheUiState():
return $default(_that.withEtagResponse,_that.withoutEtagResponse);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<EtagCachedResponse> withEtagResponse,  AsyncValue<EtagCachedResponse> withoutEtagResponse)?  $default,) {final _that = this;
switch (_that) {
case _EtagCacheUiState() when $default != null:
return $default(_that.withEtagResponse,_that.withoutEtagResponse);case _:
  return null;

}
}

}

/// @nodoc


class _EtagCacheUiState implements EtagCacheUiState {
  const _EtagCacheUiState({this.withEtagResponse = const AsyncLoading<EtagCachedResponse>(), this.withoutEtagResponse = const AsyncLoading<EtagCachedResponse>()});
  

@override@JsonKey() final  AsyncValue<EtagCachedResponse> withEtagResponse;
@override@JsonKey() final  AsyncValue<EtagCachedResponse> withoutEtagResponse;

/// Create a copy of EtagCacheUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EtagCacheUiStateCopyWith<_EtagCacheUiState> get copyWith => __$EtagCacheUiStateCopyWithImpl<_EtagCacheUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EtagCacheUiState&&(identical(other.withEtagResponse, withEtagResponse) || other.withEtagResponse == withEtagResponse)&&(identical(other.withoutEtagResponse, withoutEtagResponse) || other.withoutEtagResponse == withoutEtagResponse));
}


@override
int get hashCode => Object.hash(runtimeType,withEtagResponse,withoutEtagResponse);

@override
String toString() {
  return 'EtagCacheUiState(withEtagResponse: $withEtagResponse, withoutEtagResponse: $withoutEtagResponse)';
}


}

/// @nodoc
abstract mixin class _$EtagCacheUiStateCopyWith<$Res> implements $EtagCacheUiStateCopyWith<$Res> {
  factory _$EtagCacheUiStateCopyWith(_EtagCacheUiState value, $Res Function(_EtagCacheUiState) _then) = __$EtagCacheUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<EtagCachedResponse> withEtagResponse, AsyncValue<EtagCachedResponse> withoutEtagResponse
});




}
/// @nodoc
class __$EtagCacheUiStateCopyWithImpl<$Res>
    implements _$EtagCacheUiStateCopyWith<$Res> {
  __$EtagCacheUiStateCopyWithImpl(this._self, this._then);

  final _EtagCacheUiState _self;
  final $Res Function(_EtagCacheUiState) _then;

/// Create a copy of EtagCacheUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? withEtagResponse = null,Object? withoutEtagResponse = null,}) {
  return _then(_EtagCacheUiState(
withEtagResponse: null == withEtagResponse ? _self.withEtagResponse : withEtagResponse // ignore: cast_nullable_to_non_nullable
as AsyncValue<EtagCachedResponse>,withoutEtagResponse: null == withoutEtagResponse ? _self.withoutEtagResponse : withoutEtagResponse // ignore: cast_nullable_to_non_nullable
as AsyncValue<EtagCachedResponse>,
  ));
}


}

// dart format on
