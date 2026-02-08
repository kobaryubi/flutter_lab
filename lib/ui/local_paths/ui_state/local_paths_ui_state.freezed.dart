// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_paths_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocalPathsUiState {

 AsyncValue<List<PathEntry>>? get paths;
/// Create a copy of LocalPathsUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalPathsUiStateCopyWith<LocalPathsUiState> get copyWith => _$LocalPathsUiStateCopyWithImpl<LocalPathsUiState>(this as LocalPathsUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalPathsUiState&&(identical(other.paths, paths) || other.paths == paths));
}


@override
int get hashCode => Object.hash(runtimeType,paths);

@override
String toString() {
  return 'LocalPathsUiState(paths: $paths)';
}


}

/// @nodoc
abstract mixin class $LocalPathsUiStateCopyWith<$Res>  {
  factory $LocalPathsUiStateCopyWith(LocalPathsUiState value, $Res Function(LocalPathsUiState) _then) = _$LocalPathsUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<List<PathEntry>>? paths
});




}
/// @nodoc
class _$LocalPathsUiStateCopyWithImpl<$Res>
    implements $LocalPathsUiStateCopyWith<$Res> {
  _$LocalPathsUiStateCopyWithImpl(this._self, this._then);

  final LocalPathsUiState _self;
  final $Res Function(LocalPathsUiState) _then;

/// Create a copy of LocalPathsUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paths = freezed,}) {
  return _then(_self.copyWith(
paths: freezed == paths ? _self.paths : paths // ignore: cast_nullable_to_non_nullable
as AsyncValue<List<PathEntry>>?,
  ));
}

}


/// Adds pattern-matching-related methods to [LocalPathsUiState].
extension LocalPathsUiStatePatterns on LocalPathsUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocalPathsUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocalPathsUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocalPathsUiState value)  $default,){
final _that = this;
switch (_that) {
case _LocalPathsUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocalPathsUiState value)?  $default,){
final _that = this;
switch (_that) {
case _LocalPathsUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<List<PathEntry>>? paths)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocalPathsUiState() when $default != null:
return $default(_that.paths);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<List<PathEntry>>? paths)  $default,) {final _that = this;
switch (_that) {
case _LocalPathsUiState():
return $default(_that.paths);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<List<PathEntry>>? paths)?  $default,) {final _that = this;
switch (_that) {
case _LocalPathsUiState() when $default != null:
return $default(_that.paths);case _:
  return null;

}
}

}

/// @nodoc


class _LocalPathsUiState implements LocalPathsUiState {
  const _LocalPathsUiState({this.paths});
  

@override final  AsyncValue<List<PathEntry>>? paths;

/// Create a copy of LocalPathsUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocalPathsUiStateCopyWith<_LocalPathsUiState> get copyWith => __$LocalPathsUiStateCopyWithImpl<_LocalPathsUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocalPathsUiState&&(identical(other.paths, paths) || other.paths == paths));
}


@override
int get hashCode => Object.hash(runtimeType,paths);

@override
String toString() {
  return 'LocalPathsUiState(paths: $paths)';
}


}

/// @nodoc
abstract mixin class _$LocalPathsUiStateCopyWith<$Res> implements $LocalPathsUiStateCopyWith<$Res> {
  factory _$LocalPathsUiStateCopyWith(_LocalPathsUiState value, $Res Function(_LocalPathsUiState) _then) = __$LocalPathsUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<List<PathEntry>>? paths
});




}
/// @nodoc
class __$LocalPathsUiStateCopyWithImpl<$Res>
    implements _$LocalPathsUiStateCopyWith<$Res> {
  __$LocalPathsUiStateCopyWithImpl(this._self, this._then);

  final _LocalPathsUiState _self;
  final $Res Function(_LocalPathsUiState) _then;

/// Create a copy of LocalPathsUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paths = freezed,}) {
  return _then(_LocalPathsUiState(
paths: freezed == paths ? _self.paths : paths // ignore: cast_nullable_to_non_nullable
as AsyncValue<List<PathEntry>>?,
  ));
}


}

// dart format on
