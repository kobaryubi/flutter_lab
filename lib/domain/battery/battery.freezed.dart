// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battery.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Battery {

 int get level;
/// Create a copy of Battery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BatteryCopyWith<Battery> get copyWith => _$BatteryCopyWithImpl<Battery>(this as Battery, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Battery&&(identical(other.level, level) || other.level == level));
}


@override
int get hashCode => Object.hash(runtimeType,level);

@override
String toString() {
  return 'Battery(level: $level)';
}


}

/// @nodoc
abstract mixin class $BatteryCopyWith<$Res>  {
  factory $BatteryCopyWith(Battery value, $Res Function(Battery) _then) = _$BatteryCopyWithImpl;
@useResult
$Res call({
 int level
});




}
/// @nodoc
class _$BatteryCopyWithImpl<$Res>
    implements $BatteryCopyWith<$Res> {
  _$BatteryCopyWithImpl(this._self, this._then);

  final Battery _self;
  final $Res Function(Battery) _then;

/// Create a copy of Battery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? level = null,}) {
  return _then(_self.copyWith(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Battery].
extension BatteryPatterns on Battery {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Battery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Battery() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Battery value)  $default,){
final _that = this;
switch (_that) {
case _Battery():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Battery value)?  $default,){
final _that = this;
switch (_that) {
case _Battery() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int level)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Battery() when $default != null:
return $default(_that.level);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int level)  $default,) {final _that = this;
switch (_that) {
case _Battery():
return $default(_that.level);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int level)?  $default,) {final _that = this;
switch (_that) {
case _Battery() when $default != null:
return $default(_that.level);case _:
  return null;

}
}

}

/// @nodoc


class _Battery implements Battery {
  const _Battery({required this.level});
  

@override final  int level;

/// Create a copy of Battery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BatteryCopyWith<_Battery> get copyWith => __$BatteryCopyWithImpl<_Battery>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Battery&&(identical(other.level, level) || other.level == level));
}


@override
int get hashCode => Object.hash(runtimeType,level);

@override
String toString() {
  return 'Battery(level: $level)';
}


}

/// @nodoc
abstract mixin class _$BatteryCopyWith<$Res> implements $BatteryCopyWith<$Res> {
  factory _$BatteryCopyWith(_Battery value, $Res Function(_Battery) _then) = __$BatteryCopyWithImpl;
@override @useResult
$Res call({
 int level
});




}
/// @nodoc
class __$BatteryCopyWithImpl<$Res>
    implements _$BatteryCopyWith<$Res> {
  __$BatteryCopyWithImpl(this._self, this._then);

  final _Battery _self;
  final $Res Function(_Battery) _then;

/// Create a copy of Battery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? level = null,}) {
  return _then(_Battery(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
