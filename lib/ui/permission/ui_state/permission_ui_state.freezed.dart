// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permission_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PermissionUiState {

 AsyncValue<Map<Permission, PermissionStatus>>? get statuses;
/// Create a copy of PermissionUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PermissionUiStateCopyWith<PermissionUiState> get copyWith => _$PermissionUiStateCopyWithImpl<PermissionUiState>(this as PermissionUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionUiState&&(identical(other.statuses, statuses) || other.statuses == statuses));
}


@override
int get hashCode => Object.hash(runtimeType,statuses);

@override
String toString() {
  return 'PermissionUiState(statuses: $statuses)';
}


}

/// @nodoc
abstract mixin class $PermissionUiStateCopyWith<$Res>  {
  factory $PermissionUiStateCopyWith(PermissionUiState value, $Res Function(PermissionUiState) _then) = _$PermissionUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<Map<Permission, PermissionStatus>>? statuses
});




}
/// @nodoc
class _$PermissionUiStateCopyWithImpl<$Res>
    implements $PermissionUiStateCopyWith<$Res> {
  _$PermissionUiStateCopyWithImpl(this._self, this._then);

  final PermissionUiState _self;
  final $Res Function(PermissionUiState) _then;

/// Create a copy of PermissionUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statuses = freezed,}) {
  return _then(_self.copyWith(
statuses: freezed == statuses ? _self.statuses : statuses // ignore: cast_nullable_to_non_nullable
as AsyncValue<Map<Permission, PermissionStatus>>?,
  ));
}

}


/// Adds pattern-matching-related methods to [PermissionUiState].
extension PermissionUiStatePatterns on PermissionUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PermissionUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PermissionUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PermissionUiState value)  $default,){
final _that = this;
switch (_that) {
case _PermissionUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PermissionUiState value)?  $default,){
final _that = this;
switch (_that) {
case _PermissionUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<Map<Permission, PermissionStatus>>? statuses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PermissionUiState() when $default != null:
return $default(_that.statuses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<Map<Permission, PermissionStatus>>? statuses)  $default,) {final _that = this;
switch (_that) {
case _PermissionUiState():
return $default(_that.statuses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<Map<Permission, PermissionStatus>>? statuses)?  $default,) {final _that = this;
switch (_that) {
case _PermissionUiState() when $default != null:
return $default(_that.statuses);case _:
  return null;

}
}

}

/// @nodoc


class _PermissionUiState implements PermissionUiState {
  const _PermissionUiState({this.statuses});
  

@override final  AsyncValue<Map<Permission, PermissionStatus>>? statuses;

/// Create a copy of PermissionUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PermissionUiStateCopyWith<_PermissionUiState> get copyWith => __$PermissionUiStateCopyWithImpl<_PermissionUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PermissionUiState&&(identical(other.statuses, statuses) || other.statuses == statuses));
}


@override
int get hashCode => Object.hash(runtimeType,statuses);

@override
String toString() {
  return 'PermissionUiState(statuses: $statuses)';
}


}

/// @nodoc
abstract mixin class _$PermissionUiStateCopyWith<$Res> implements $PermissionUiStateCopyWith<$Res> {
  factory _$PermissionUiStateCopyWith(_PermissionUiState value, $Res Function(_PermissionUiState) _then) = __$PermissionUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<Map<Permission, PermissionStatus>>? statuses
});




}
/// @nodoc
class __$PermissionUiStateCopyWithImpl<$Res>
    implements _$PermissionUiStateCopyWith<$Res> {
  __$PermissionUiStateCopyWithImpl(this._self, this._then);

  final _PermissionUiState _self;
  final $Res Function(_PermissionUiState) _then;

/// Create a copy of PermissionUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statuses = freezed,}) {
  return _then(_PermissionUiState(
statuses: freezed == statuses ? _self.statuses : statuses // ignore: cast_nullable_to_non_nullable
as AsyncValue<Map<Permission, PermissionStatus>>?,
  ));
}


}

// dart format on
