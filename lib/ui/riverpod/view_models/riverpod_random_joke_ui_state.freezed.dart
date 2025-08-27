// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'riverpod_random_joke_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RiverpodRandomJokeUiState {

 AsyncValue<Joke> get randomJoke;
/// Create a copy of RiverpodRandomJokeUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RiverpodRandomJokeUiStateCopyWith<RiverpodRandomJokeUiState> get copyWith => _$RiverpodRandomJokeUiStateCopyWithImpl<RiverpodRandomJokeUiState>(this as RiverpodRandomJokeUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RiverpodRandomJokeUiState&&(identical(other.randomJoke, randomJoke) || other.randomJoke == randomJoke));
}


@override
int get hashCode => Object.hash(runtimeType,randomJoke);

@override
String toString() {
  return 'RiverpodRandomJokeUiState(randomJoke: $randomJoke)';
}


}

/// @nodoc
abstract mixin class $RiverpodRandomJokeUiStateCopyWith<$Res>  {
  factory $RiverpodRandomJokeUiStateCopyWith(RiverpodRandomJokeUiState value, $Res Function(RiverpodRandomJokeUiState) _then) = _$RiverpodRandomJokeUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<Joke> randomJoke
});




}
/// @nodoc
class _$RiverpodRandomJokeUiStateCopyWithImpl<$Res>
    implements $RiverpodRandomJokeUiStateCopyWith<$Res> {
  _$RiverpodRandomJokeUiStateCopyWithImpl(this._self, this._then);

  final RiverpodRandomJokeUiState _self;
  final $Res Function(RiverpodRandomJokeUiState) _then;

/// Create a copy of RiverpodRandomJokeUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? randomJoke = null,}) {
  return _then(_self.copyWith(
randomJoke: null == randomJoke ? _self.randomJoke : randomJoke // ignore: cast_nullable_to_non_nullable
as AsyncValue<Joke>,
  ));
}

}


/// Adds pattern-matching-related methods to [RiverpodRandomJokeUiState].
extension RiverpodRandomJokeUiStatePatterns on RiverpodRandomJokeUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RiverpodRandomJokeUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RiverpodRandomJokeUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RiverpodRandomJokeUiState value)  $default,){
final _that = this;
switch (_that) {
case _RiverpodRandomJokeUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RiverpodRandomJokeUiState value)?  $default,){
final _that = this;
switch (_that) {
case _RiverpodRandomJokeUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<Joke> randomJoke)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RiverpodRandomJokeUiState() when $default != null:
return $default(_that.randomJoke);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<Joke> randomJoke)  $default,) {final _that = this;
switch (_that) {
case _RiverpodRandomJokeUiState():
return $default(_that.randomJoke);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<Joke> randomJoke)?  $default,) {final _that = this;
switch (_that) {
case _RiverpodRandomJokeUiState() when $default != null:
return $default(_that.randomJoke);case _:
  return null;

}
}

}

/// @nodoc


class _RiverpodRandomJokeUiState implements RiverpodRandomJokeUiState {
  const _RiverpodRandomJokeUiState({required this.randomJoke});
  

@override final  AsyncValue<Joke> randomJoke;

/// Create a copy of RiverpodRandomJokeUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RiverpodRandomJokeUiStateCopyWith<_RiverpodRandomJokeUiState> get copyWith => __$RiverpodRandomJokeUiStateCopyWithImpl<_RiverpodRandomJokeUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RiverpodRandomJokeUiState&&(identical(other.randomJoke, randomJoke) || other.randomJoke == randomJoke));
}


@override
int get hashCode => Object.hash(runtimeType,randomJoke);

@override
String toString() {
  return 'RiverpodRandomJokeUiState(randomJoke: $randomJoke)';
}


}

/// @nodoc
abstract mixin class _$RiverpodRandomJokeUiStateCopyWith<$Res> implements $RiverpodRandomJokeUiStateCopyWith<$Res> {
  factory _$RiverpodRandomJokeUiStateCopyWith(_RiverpodRandomJokeUiState value, $Res Function(_RiverpodRandomJokeUiState) _then) = __$RiverpodRandomJokeUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<Joke> randomJoke
});




}
/// @nodoc
class __$RiverpodRandomJokeUiStateCopyWithImpl<$Res>
    implements _$RiverpodRandomJokeUiStateCopyWith<$Res> {
  __$RiverpodRandomJokeUiStateCopyWithImpl(this._self, this._then);

  final _RiverpodRandomJokeUiState _self;
  final $Res Function(_RiverpodRandomJokeUiState) _then;

/// Create a copy of RiverpodRandomJokeUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? randomJoke = null,}) {
  return _then(_RiverpodRandomJokeUiState(
randomJoke: null == randomJoke ? _self.randomJoke : randomJoke // ignore: cast_nullable_to_non_nullable
as AsyncValue<Joke>,
  ));
}


}

// dart format on
