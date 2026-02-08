// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'effect_vs_listen_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EffectVsListenUiState {

 int get count;
/// Create a copy of EffectVsListenUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EffectVsListenUiStateCopyWith<EffectVsListenUiState> get copyWith => _$EffectVsListenUiStateCopyWithImpl<EffectVsListenUiState>(this as EffectVsListenUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EffectVsListenUiState&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode => Object.hash(runtimeType,count);

@override
String toString() {
  return 'EffectVsListenUiState(count: $count)';
}


}

/// @nodoc
abstract mixin class $EffectVsListenUiStateCopyWith<$Res>  {
  factory $EffectVsListenUiStateCopyWith(EffectVsListenUiState value, $Res Function(EffectVsListenUiState) _then) = _$EffectVsListenUiStateCopyWithImpl;
@useResult
$Res call({
 int count
});




}
/// @nodoc
class _$EffectVsListenUiStateCopyWithImpl<$Res>
    implements $EffectVsListenUiStateCopyWith<$Res> {
  _$EffectVsListenUiStateCopyWithImpl(this._self, this._then);

  final EffectVsListenUiState _self;
  final $Res Function(EffectVsListenUiState) _then;

/// Create a copy of EffectVsListenUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [EffectVsListenUiState].
extension EffectVsListenUiStatePatterns on EffectVsListenUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EffectVsListenUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EffectVsListenUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EffectVsListenUiState value)  $default,){
final _that = this;
switch (_that) {
case _EffectVsListenUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EffectVsListenUiState value)?  $default,){
final _that = this;
switch (_that) {
case _EffectVsListenUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EffectVsListenUiState() when $default != null:
return $default(_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count)  $default,) {final _that = this;
switch (_that) {
case _EffectVsListenUiState():
return $default(_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count)?  $default,) {final _that = this;
switch (_that) {
case _EffectVsListenUiState() when $default != null:
return $default(_that.count);case _:
  return null;

}
}

}

/// @nodoc


class _EffectVsListenUiState implements EffectVsListenUiState {
  const _EffectVsListenUiState({this.count = 0});
  

@override@JsonKey() final  int count;

/// Create a copy of EffectVsListenUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EffectVsListenUiStateCopyWith<_EffectVsListenUiState> get copyWith => __$EffectVsListenUiStateCopyWithImpl<_EffectVsListenUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EffectVsListenUiState&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode => Object.hash(runtimeType,count);

@override
String toString() {
  return 'EffectVsListenUiState(count: $count)';
}


}

/// @nodoc
abstract mixin class _$EffectVsListenUiStateCopyWith<$Res> implements $EffectVsListenUiStateCopyWith<$Res> {
  factory _$EffectVsListenUiStateCopyWith(_EffectVsListenUiState value, $Res Function(_EffectVsListenUiState) _then) = __$EffectVsListenUiStateCopyWithImpl;
@override @useResult
$Res call({
 int count
});




}
/// @nodoc
class __$EffectVsListenUiStateCopyWithImpl<$Res>
    implements _$EffectVsListenUiStateCopyWith<$Res> {
  __$EffectVsListenUiStateCopyWithImpl(this._self, this._then);

  final _EffectVsListenUiState _self;
  final $Res Function(_EffectVsListenUiState) _then;

/// Create a copy of EffectVsListenUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,}) {
  return _then(_EffectVsListenUiState(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
