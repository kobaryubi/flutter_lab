// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'async_state_race_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AsyncStateRaceUiState {

 AsyncValue<String>? get fetchA; AsyncValue<String>? get fetchB; AsyncValue<String>? get fetchC;
/// Create a copy of AsyncStateRaceUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AsyncStateRaceUiStateCopyWith<AsyncStateRaceUiState> get copyWith => _$AsyncStateRaceUiStateCopyWithImpl<AsyncStateRaceUiState>(this as AsyncStateRaceUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AsyncStateRaceUiState&&(identical(other.fetchA, fetchA) || other.fetchA == fetchA)&&(identical(other.fetchB, fetchB) || other.fetchB == fetchB)&&(identical(other.fetchC, fetchC) || other.fetchC == fetchC));
}


@override
int get hashCode => Object.hash(runtimeType,fetchA,fetchB,fetchC);

@override
String toString() {
  return 'AsyncStateRaceUiState(fetchA: $fetchA, fetchB: $fetchB, fetchC: $fetchC)';
}


}

/// @nodoc
abstract mixin class $AsyncStateRaceUiStateCopyWith<$Res>  {
  factory $AsyncStateRaceUiStateCopyWith(AsyncStateRaceUiState value, $Res Function(AsyncStateRaceUiState) _then) = _$AsyncStateRaceUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<String>? fetchA, AsyncValue<String>? fetchB, AsyncValue<String>? fetchC
});




}
/// @nodoc
class _$AsyncStateRaceUiStateCopyWithImpl<$Res>
    implements $AsyncStateRaceUiStateCopyWith<$Res> {
  _$AsyncStateRaceUiStateCopyWithImpl(this._self, this._then);

  final AsyncStateRaceUiState _self;
  final $Res Function(AsyncStateRaceUiState) _then;

/// Create a copy of AsyncStateRaceUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fetchA = freezed,Object? fetchB = freezed,Object? fetchC = freezed,}) {
  return _then(_self.copyWith(
fetchA: freezed == fetchA ? _self.fetchA : fetchA // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,fetchB: freezed == fetchB ? _self.fetchB : fetchB // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,fetchC: freezed == fetchC ? _self.fetchC : fetchC // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AsyncStateRaceUiState].
extension AsyncStateRaceUiStatePatterns on AsyncStateRaceUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AsyncStateRaceUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AsyncStateRaceUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AsyncStateRaceUiState value)  $default,){
final _that = this;
switch (_that) {
case _AsyncStateRaceUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AsyncStateRaceUiState value)?  $default,){
final _that = this;
switch (_that) {
case _AsyncStateRaceUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<String>? fetchA,  AsyncValue<String>? fetchB,  AsyncValue<String>? fetchC)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AsyncStateRaceUiState() when $default != null:
return $default(_that.fetchA,_that.fetchB,_that.fetchC);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<String>? fetchA,  AsyncValue<String>? fetchB,  AsyncValue<String>? fetchC)  $default,) {final _that = this;
switch (_that) {
case _AsyncStateRaceUiState():
return $default(_that.fetchA,_that.fetchB,_that.fetchC);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<String>? fetchA,  AsyncValue<String>? fetchB,  AsyncValue<String>? fetchC)?  $default,) {final _that = this;
switch (_that) {
case _AsyncStateRaceUiState() when $default != null:
return $default(_that.fetchA,_that.fetchB,_that.fetchC);case _:
  return null;

}
}

}

/// @nodoc


class _AsyncStateRaceUiState implements AsyncStateRaceUiState {
  const _AsyncStateRaceUiState({this.fetchA, this.fetchB, this.fetchC});
  

@override final  AsyncValue<String>? fetchA;
@override final  AsyncValue<String>? fetchB;
@override final  AsyncValue<String>? fetchC;

/// Create a copy of AsyncStateRaceUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AsyncStateRaceUiStateCopyWith<_AsyncStateRaceUiState> get copyWith => __$AsyncStateRaceUiStateCopyWithImpl<_AsyncStateRaceUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AsyncStateRaceUiState&&(identical(other.fetchA, fetchA) || other.fetchA == fetchA)&&(identical(other.fetchB, fetchB) || other.fetchB == fetchB)&&(identical(other.fetchC, fetchC) || other.fetchC == fetchC));
}


@override
int get hashCode => Object.hash(runtimeType,fetchA,fetchB,fetchC);

@override
String toString() {
  return 'AsyncStateRaceUiState(fetchA: $fetchA, fetchB: $fetchB, fetchC: $fetchC)';
}


}

/// @nodoc
abstract mixin class _$AsyncStateRaceUiStateCopyWith<$Res> implements $AsyncStateRaceUiStateCopyWith<$Res> {
  factory _$AsyncStateRaceUiStateCopyWith(_AsyncStateRaceUiState value, $Res Function(_AsyncStateRaceUiState) _then) = __$AsyncStateRaceUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<String>? fetchA, AsyncValue<String>? fetchB, AsyncValue<String>? fetchC
});




}
/// @nodoc
class __$AsyncStateRaceUiStateCopyWithImpl<$Res>
    implements _$AsyncStateRaceUiStateCopyWith<$Res> {
  __$AsyncStateRaceUiStateCopyWithImpl(this._self, this._then);

  final _AsyncStateRaceUiState _self;
  final $Res Function(_AsyncStateRaceUiState) _then;

/// Create a copy of AsyncStateRaceUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fetchA = freezed,Object? fetchB = freezed,Object? fetchC = freezed,}) {
  return _then(_AsyncStateRaceUiState(
fetchA: freezed == fetchA ? _self.fetchA : fetchA // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,fetchB: freezed == fetchB ? _self.fetchB : fetchB // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,fetchC: freezed == fetchC ? _self.fetchC : fetchC // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,
  ));
}


}

// dart format on
