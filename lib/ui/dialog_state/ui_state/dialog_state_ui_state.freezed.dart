// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dialog_state_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DialogStateUiState {

 int get counter;
/// Create a copy of DialogStateUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DialogStateUiStateCopyWith<DialogStateUiState> get copyWith => _$DialogStateUiStateCopyWithImpl<DialogStateUiState>(this as DialogStateUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DialogStateUiState&&(identical(other.counter, counter) || other.counter == counter));
}


@override
int get hashCode => Object.hash(runtimeType,counter);

@override
String toString() {
  return 'DialogStateUiState(counter: $counter)';
}


}

/// @nodoc
abstract mixin class $DialogStateUiStateCopyWith<$Res>  {
  factory $DialogStateUiStateCopyWith(DialogStateUiState value, $Res Function(DialogStateUiState) _then) = _$DialogStateUiStateCopyWithImpl;
@useResult
$Res call({
 int counter
});




}
/// @nodoc
class _$DialogStateUiStateCopyWithImpl<$Res>
    implements $DialogStateUiStateCopyWith<$Res> {
  _$DialogStateUiStateCopyWithImpl(this._self, this._then);

  final DialogStateUiState _self;
  final $Res Function(DialogStateUiState) _then;

/// Create a copy of DialogStateUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? counter = null,}) {
  return _then(_self.copyWith(
counter: null == counter ? _self.counter : counter // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DialogStateUiState].
extension DialogStateUiStatePatterns on DialogStateUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DialogStateUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DialogStateUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DialogStateUiState value)  $default,){
final _that = this;
switch (_that) {
case _DialogStateUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DialogStateUiState value)?  $default,){
final _that = this;
switch (_that) {
case _DialogStateUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int counter)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DialogStateUiState() when $default != null:
return $default(_that.counter);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int counter)  $default,) {final _that = this;
switch (_that) {
case _DialogStateUiState():
return $default(_that.counter);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int counter)?  $default,) {final _that = this;
switch (_that) {
case _DialogStateUiState() when $default != null:
return $default(_that.counter);case _:
  return null;

}
}

}

/// @nodoc


class _DialogStateUiState implements DialogStateUiState {
  const _DialogStateUiState({this.counter = 0});


@override @JsonKey(defaultValue: 0) final  int counter;

/// Create a copy of DialogStateUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DialogStateUiStateCopyWith<_DialogStateUiState> get copyWith => __$DialogStateUiStateCopyWithImpl<_DialogStateUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DialogStateUiState&&(identical(other.counter, counter) || other.counter == counter));
}


@override
int get hashCode => Object.hash(runtimeType,counter);

@override
String toString() {
  return 'DialogStateUiState(counter: $counter)';
}


}

/// @nodoc
abstract mixin class _$DialogStateUiStateCopyWith<$Res> implements $DialogStateUiStateCopyWith<$Res> {
  factory _$DialogStateUiStateCopyWith(_DialogStateUiState value, $Res Function(_DialogStateUiState) _then) = __$DialogStateUiStateCopyWithImpl;
@override @useResult
$Res call({
 int counter
});




}
/// @nodoc
class __$DialogStateUiStateCopyWithImpl<$Res>
    implements _$DialogStateUiStateCopyWith<$Res> {
  __$DialogStateUiStateCopyWithImpl(this._self, this._then);

  final _DialogStateUiState _self;
  final $Res Function(_DialogStateUiState) _then;

/// Create a copy of DialogStateUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? counter = null,}) {
  return _then(_DialogStateUiState(
counter: null == counter ? _self.counter : counter // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
