// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permission_statuses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PermissionStatuses {

 Map<AppPermission, AppPermissionStatus> get statuses;
/// Create a copy of PermissionStatuses
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PermissionStatusesCopyWith<PermissionStatuses> get copyWith => _$PermissionStatusesCopyWithImpl<PermissionStatuses>(this as PermissionStatuses, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionStatuses&&const DeepCollectionEquality().equals(other.statuses, statuses));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(statuses));

@override
String toString() {
  return 'PermissionStatuses(statuses: $statuses)';
}


}

/// @nodoc
abstract mixin class $PermissionStatusesCopyWith<$Res>  {
  factory $PermissionStatusesCopyWith(PermissionStatuses value, $Res Function(PermissionStatuses) _then) = _$PermissionStatusesCopyWithImpl;
@useResult
$Res call({
 Map<AppPermission, AppPermissionStatus> statuses
});




}
/// @nodoc
class _$PermissionStatusesCopyWithImpl<$Res>
    implements $PermissionStatusesCopyWith<$Res> {
  _$PermissionStatusesCopyWithImpl(this._self, this._then);

  final PermissionStatuses _self;
  final $Res Function(PermissionStatuses) _then;

/// Create a copy of PermissionStatuses
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statuses = null,}) {
  return _then(_self.copyWith(
statuses: null == statuses ? _self.statuses : statuses // ignore: cast_nullable_to_non_nullable
as Map<AppPermission, AppPermissionStatus>,
  ));
}

}


/// Adds pattern-matching-related methods to [PermissionStatuses].
extension PermissionStatusesPatterns on PermissionStatuses {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PermissionStatuses value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PermissionStatuses() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PermissionStatuses value)  $default,){
final _that = this;
switch (_that) {
case _PermissionStatuses():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PermissionStatuses value)?  $default,){
final _that = this;
switch (_that) {
case _PermissionStatuses() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<AppPermission, AppPermissionStatus> statuses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PermissionStatuses() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<AppPermission, AppPermissionStatus> statuses)  $default,) {final _that = this;
switch (_that) {
case _PermissionStatuses():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<AppPermission, AppPermissionStatus> statuses)?  $default,) {final _that = this;
switch (_that) {
case _PermissionStatuses() when $default != null:
return $default(_that.statuses);case _:
  return null;

}
}

}

/// @nodoc


class _PermissionStatuses implements PermissionStatuses {
  const _PermissionStatuses({required final  Map<AppPermission, AppPermissionStatus> statuses}): _statuses = statuses;
  

 final  Map<AppPermission, AppPermissionStatus> _statuses;
@override Map<AppPermission, AppPermissionStatus> get statuses {
  if (_statuses is EqualUnmodifiableMapView) return _statuses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_statuses);
}


/// Create a copy of PermissionStatuses
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PermissionStatusesCopyWith<_PermissionStatuses> get copyWith => __$PermissionStatusesCopyWithImpl<_PermissionStatuses>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PermissionStatuses&&const DeepCollectionEquality().equals(other._statuses, _statuses));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_statuses));

@override
String toString() {
  return 'PermissionStatuses(statuses: $statuses)';
}


}

/// @nodoc
abstract mixin class _$PermissionStatusesCopyWith<$Res> implements $PermissionStatusesCopyWith<$Res> {
  factory _$PermissionStatusesCopyWith(_PermissionStatuses value, $Res Function(_PermissionStatuses) _then) = __$PermissionStatusesCopyWithImpl;
@override @useResult
$Res call({
 Map<AppPermission, AppPermissionStatus> statuses
});




}
/// @nodoc
class __$PermissionStatusesCopyWithImpl<$Res>
    implements _$PermissionStatusesCopyWith<$Res> {
  __$PermissionStatusesCopyWithImpl(this._self, this._then);

  final _PermissionStatuses _self;
  final $Res Function(_PermissionStatuses) _then;

/// Create a copy of PermissionStatuses
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statuses = null,}) {
  return _then(_PermissionStatuses(
statuses: null == statuses ? _self._statuses : statuses // ignore: cast_nullable_to_non_nullable
as Map<AppPermission, AppPermissionStatus>,
  ));
}


}

// dart format on
