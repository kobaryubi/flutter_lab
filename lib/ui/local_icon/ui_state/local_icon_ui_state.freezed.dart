// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_icon_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocalIconUiState {

 AsyncValue<File>? get copyAsset;
/// Create a copy of LocalIconUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalIconUiStateCopyWith<LocalIconUiState> get copyWith => _$LocalIconUiStateCopyWithImpl<LocalIconUiState>(this as LocalIconUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalIconUiState&&(identical(other.copyAsset, copyAsset) || other.copyAsset == copyAsset));
}


@override
int get hashCode => Object.hash(runtimeType,copyAsset);

@override
String toString() {
  return 'LocalIconUiState(copyAsset: $copyAsset)';
}


}

/// @nodoc
abstract mixin class $LocalIconUiStateCopyWith<$Res>  {
  factory $LocalIconUiStateCopyWith(LocalIconUiState value, $Res Function(LocalIconUiState) _then) = _$LocalIconUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<File>? copyAsset
});




}
/// @nodoc
class _$LocalIconUiStateCopyWithImpl<$Res>
    implements $LocalIconUiStateCopyWith<$Res> {
  _$LocalIconUiStateCopyWithImpl(this._self, this._then);

  final LocalIconUiState _self;
  final $Res Function(LocalIconUiState) _then;

/// Create a copy of LocalIconUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? copyAsset = freezed,}) {
  return _then(_self.copyWith(
copyAsset: freezed == copyAsset ? _self.copyAsset : copyAsset // ignore: cast_nullable_to_non_nullable
as AsyncValue<File>?,
  ));
}

}


/// Adds pattern-matching-related methods to [LocalIconUiState].
extension LocalIconUiStatePatterns on LocalIconUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocalIconUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocalIconUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocalIconUiState value)  $default,){
final _that = this;
switch (_that) {
case _LocalIconUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocalIconUiState value)?  $default,){
final _that = this;
switch (_that) {
case _LocalIconUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<File>? copyAsset)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocalIconUiState() when $default != null:
return $default(_that.copyAsset);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<File>? copyAsset)  $default,) {final _that = this;
switch (_that) {
case _LocalIconUiState():
return $default(_that.copyAsset);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<File>? copyAsset)?  $default,) {final _that = this;
switch (_that) {
case _LocalIconUiState() when $default != null:
return $default(_that.copyAsset);case _:
  return null;

}
}

}

/// @nodoc


class _LocalIconUiState implements LocalIconUiState {
  const _LocalIconUiState({this.copyAsset});
  

@override final  AsyncValue<File>? copyAsset;

/// Create a copy of LocalIconUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocalIconUiStateCopyWith<_LocalIconUiState> get copyWith => __$LocalIconUiStateCopyWithImpl<_LocalIconUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocalIconUiState&&(identical(other.copyAsset, copyAsset) || other.copyAsset == copyAsset));
}


@override
int get hashCode => Object.hash(runtimeType,copyAsset);

@override
String toString() {
  return 'LocalIconUiState(copyAsset: $copyAsset)';
}


}

/// @nodoc
abstract mixin class _$LocalIconUiStateCopyWith<$Res> implements $LocalIconUiStateCopyWith<$Res> {
  factory _$LocalIconUiStateCopyWith(_LocalIconUiState value, $Res Function(_LocalIconUiState) _then) = __$LocalIconUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<File>? copyAsset
});




}
/// @nodoc
class __$LocalIconUiStateCopyWithImpl<$Res>
    implements _$LocalIconUiStateCopyWith<$Res> {
  __$LocalIconUiStateCopyWithImpl(this._self, this._then);

  final _LocalIconUiState _self;
  final $Res Function(_LocalIconUiState) _then;

/// Create a copy of LocalIconUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? copyAsset = freezed,}) {
  return _then(_LocalIconUiState(
copyAsset: freezed == copyAsset ? _self.copyAsset : copyAsset // ignore: cast_nullable_to_non_nullable
as AsyncValue<File>?,
  ));
}


}

// dart format on
