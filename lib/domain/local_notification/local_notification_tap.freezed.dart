// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_notification_tap.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocalNotificationTap {

 int? get id; Map<String, Object?> get data;
/// Create a copy of LocalNotificationTap
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalNotificationTapCopyWith<LocalNotificationTap> get copyWith => _$LocalNotificationTapCopyWithImpl<LocalNotificationTap>(this as LocalNotificationTap, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalNotificationTap&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'LocalNotificationTap(id: $id, data: $data)';
}


}

/// @nodoc
abstract mixin class $LocalNotificationTapCopyWith<$Res>  {
  factory $LocalNotificationTapCopyWith(LocalNotificationTap value, $Res Function(LocalNotificationTap) _then) = _$LocalNotificationTapCopyWithImpl;
@useResult
$Res call({
 int? id, Map<String, Object?> data
});




}
/// @nodoc
class _$LocalNotificationTapCopyWithImpl<$Res>
    implements $LocalNotificationTapCopyWith<$Res> {
  _$LocalNotificationTapCopyWithImpl(this._self, this._then);

  final LocalNotificationTap _self;
  final $Res Function(LocalNotificationTap) _then;

/// Create a copy of LocalNotificationTap
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? data = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [LocalNotificationTap].
extension LocalNotificationTapPatterns on LocalNotificationTap {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocalNotificationTap value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocalNotificationTap() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocalNotificationTap value)  $default,){
final _that = this;
switch (_that) {
case _LocalNotificationTap():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocalNotificationTap value)?  $default,){
final _that = this;
switch (_that) {
case _LocalNotificationTap() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  Map<String, Object?> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocalNotificationTap() when $default != null:
return $default(_that.id,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  Map<String, Object?> data)  $default,) {final _that = this;
switch (_that) {
case _LocalNotificationTap():
return $default(_that.id,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  Map<String, Object?> data)?  $default,) {final _that = this;
switch (_that) {
case _LocalNotificationTap() when $default != null:
return $default(_that.id,_that.data);case _:
  return null;

}
}

}

/// @nodoc


class _LocalNotificationTap implements LocalNotificationTap {
  const _LocalNotificationTap({required this.id, required final  Map<String, Object?> data}): _data = data;
  

@override final  int? id;
 final  Map<String, Object?> _data;
@override Map<String, Object?> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of LocalNotificationTap
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocalNotificationTapCopyWith<_LocalNotificationTap> get copyWith => __$LocalNotificationTapCopyWithImpl<_LocalNotificationTap>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocalNotificationTap&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'LocalNotificationTap(id: $id, data: $data)';
}


}

/// @nodoc
abstract mixin class _$LocalNotificationTapCopyWith<$Res> implements $LocalNotificationTapCopyWith<$Res> {
  factory _$LocalNotificationTapCopyWith(_LocalNotificationTap value, $Res Function(_LocalNotificationTap) _then) = __$LocalNotificationTapCopyWithImpl;
@override @useResult
$Res call({
 int? id, Map<String, Object?> data
});




}
/// @nodoc
class __$LocalNotificationTapCopyWithImpl<$Res>
    implements _$LocalNotificationTapCopyWith<$Res> {
  __$LocalNotificationTapCopyWithImpl(this._self, this._then);

  final _LocalNotificationTap _self;
  final $Res Function(_LocalNotificationTap) _then;

/// Create a copy of LocalNotificationTap
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? data = null,}) {
  return _then(_LocalNotificationTap(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}


}

// dart format on
