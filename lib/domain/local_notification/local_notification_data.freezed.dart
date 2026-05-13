// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_notification_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocalNotificationData {

 Map<String, Object?> get data;
/// Create a copy of LocalNotificationData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalNotificationDataCopyWith<LocalNotificationData> get copyWith => _$LocalNotificationDataCopyWithImpl<LocalNotificationData>(this as LocalNotificationData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalNotificationData&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'LocalNotificationData(data: $data)';
}


}

/// @nodoc
abstract mixin class $LocalNotificationDataCopyWith<$Res>  {
  factory $LocalNotificationDataCopyWith(LocalNotificationData value, $Res Function(LocalNotificationData) _then) = _$LocalNotificationDataCopyWithImpl;
@useResult
$Res call({
 Map<String, Object?> data
});




}
/// @nodoc
class _$LocalNotificationDataCopyWithImpl<$Res>
    implements $LocalNotificationDataCopyWith<$Res> {
  _$LocalNotificationDataCopyWithImpl(this._self, this._then);

  final LocalNotificationData _self;
  final $Res Function(LocalNotificationData) _then;

/// Create a copy of LocalNotificationData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [LocalNotificationData].
extension LocalNotificationDataPatterns on LocalNotificationData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocalNotificationData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocalNotificationData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocalNotificationData value)  $default,){
final _that = this;
switch (_that) {
case _LocalNotificationData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocalNotificationData value)?  $default,){
final _that = this;
switch (_that) {
case _LocalNotificationData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, Object?> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocalNotificationData() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, Object?> data)  $default,) {final _that = this;
switch (_that) {
case _LocalNotificationData():
return $default(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, Object?> data)?  $default,) {final _that = this;
switch (_that) {
case _LocalNotificationData() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class _LocalNotificationData implements LocalNotificationData {
  const _LocalNotificationData({required final  Map<String, Object?> data}): _data = data;
  

 final  Map<String, Object?> _data;
@override Map<String, Object?> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of LocalNotificationData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocalNotificationDataCopyWith<_LocalNotificationData> get copyWith => __$LocalNotificationDataCopyWithImpl<_LocalNotificationData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocalNotificationData&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'LocalNotificationData(data: $data)';
}


}

/// @nodoc
abstract mixin class _$LocalNotificationDataCopyWith<$Res> implements $LocalNotificationDataCopyWith<$Res> {
  factory _$LocalNotificationDataCopyWith(_LocalNotificationData value, $Res Function(_LocalNotificationData) _then) = __$LocalNotificationDataCopyWithImpl;
@override @useResult
$Res call({
 Map<String, Object?> data
});




}
/// @nodoc
class __$LocalNotificationDataCopyWithImpl<$Res>
    implements _$LocalNotificationDataCopyWith<$Res> {
  __$LocalNotificationDataCopyWithImpl(this._self, this._then);

  final _LocalNotificationData _self;
  final $Res Function(_LocalNotificationData) _then;

/// Create a copy of LocalNotificationData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_LocalNotificationData(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}


}

// dart format on
