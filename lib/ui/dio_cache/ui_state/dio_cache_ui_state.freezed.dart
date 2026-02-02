// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dio_cache_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DioCacheUiState {

 AsyncValue<CachedResponse> get response;
/// Create a copy of DioCacheUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DioCacheUiStateCopyWith<DioCacheUiState> get copyWith => _$DioCacheUiStateCopyWithImpl<DioCacheUiState>(this as DioCacheUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DioCacheUiState&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'DioCacheUiState(response: $response)';
}


}

/// @nodoc
abstract mixin class $DioCacheUiStateCopyWith<$Res>  {
  factory $DioCacheUiStateCopyWith(DioCacheUiState value, $Res Function(DioCacheUiState) _then) = _$DioCacheUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<CachedResponse> response
});




}
/// @nodoc
class _$DioCacheUiStateCopyWithImpl<$Res>
    implements $DioCacheUiStateCopyWith<$Res> {
  _$DioCacheUiStateCopyWithImpl(this._self, this._then);

  final DioCacheUiState _self;
  final $Res Function(DioCacheUiState) _then;

/// Create a copy of DioCacheUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? response = null,}) {
  return _then(_self.copyWith(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as AsyncValue<CachedResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [DioCacheUiState].
extension DioCacheUiStatePatterns on DioCacheUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DioCacheUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DioCacheUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DioCacheUiState value)  $default,){
final _that = this;
switch (_that) {
case _DioCacheUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DioCacheUiState value)?  $default,){
final _that = this;
switch (_that) {
case _DioCacheUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<CachedResponse> response)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DioCacheUiState() when $default != null:
return $default(_that.response);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<CachedResponse> response)  $default,) {final _that = this;
switch (_that) {
case _DioCacheUiState():
return $default(_that.response);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<CachedResponse> response)?  $default,) {final _that = this;
switch (_that) {
case _DioCacheUiState() when $default != null:
return $default(_that.response);case _:
  return null;

}
}

}

/// @nodoc


class _DioCacheUiState implements DioCacheUiState {
  const _DioCacheUiState({this.response = const AsyncLoading<CachedResponse>()});
  

@override@JsonKey() final  AsyncValue<CachedResponse> response;

/// Create a copy of DioCacheUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DioCacheUiStateCopyWith<_DioCacheUiState> get copyWith => __$DioCacheUiStateCopyWithImpl<_DioCacheUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DioCacheUiState&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'DioCacheUiState(response: $response)';
}


}

/// @nodoc
abstract mixin class _$DioCacheUiStateCopyWith<$Res> implements $DioCacheUiStateCopyWith<$Res> {
  factory _$DioCacheUiStateCopyWith(_DioCacheUiState value, $Res Function(_DioCacheUiState) _then) = __$DioCacheUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<CachedResponse> response
});




}
/// @nodoc
class __$DioCacheUiStateCopyWithImpl<$Res>
    implements _$DioCacheUiStateCopyWith<$Res> {
  __$DioCacheUiStateCopyWithImpl(this._self, this._then);

  final _DioCacheUiState _self;
  final $Res Function(_DioCacheUiState) _then;

/// Create a copy of DioCacheUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(_DioCacheUiState(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as AsyncValue<CachedResponse>,
  ));
}


}

// dart format on
