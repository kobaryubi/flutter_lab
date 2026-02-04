// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connectivity_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ConnectivityStatus {

 List<String> get connectivities;
/// Create a copy of ConnectivityStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectivityStatusCopyWith<ConnectivityStatus> get copyWith => _$ConnectivityStatusCopyWithImpl<ConnectivityStatus>(this as ConnectivityStatus, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectivityStatus&&const DeepCollectionEquality().equals(other.connectivities, connectivities));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(connectivities));

@override
String toString() {
  return 'ConnectivityStatus(connectivities: $connectivities)';
}


}

/// @nodoc
abstract mixin class $ConnectivityStatusCopyWith<$Res>  {
  factory $ConnectivityStatusCopyWith(ConnectivityStatus value, $Res Function(ConnectivityStatus) _then) = _$ConnectivityStatusCopyWithImpl;
@useResult
$Res call({
 List<String> connectivities
});




}
/// @nodoc
class _$ConnectivityStatusCopyWithImpl<$Res>
    implements $ConnectivityStatusCopyWith<$Res> {
  _$ConnectivityStatusCopyWithImpl(this._self, this._then);

  final ConnectivityStatus _self;
  final $Res Function(ConnectivityStatus) _then;

/// Create a copy of ConnectivityStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? connectivities = null,}) {
  return _then(_self.copyWith(
connectivities: null == connectivities ? _self.connectivities : connectivities // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ConnectivityStatus].
extension ConnectivityStatusPatterns on ConnectivityStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConnectivityStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConnectivityStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConnectivityStatus value)  $default,){
final _that = this;
switch (_that) {
case _ConnectivityStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConnectivityStatus value)?  $default,){
final _that = this;
switch (_that) {
case _ConnectivityStatus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> connectivities)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConnectivityStatus() when $default != null:
return $default(_that.connectivities);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> connectivities)  $default,) {final _that = this;
switch (_that) {
case _ConnectivityStatus():
return $default(_that.connectivities);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> connectivities)?  $default,) {final _that = this;
switch (_that) {
case _ConnectivityStatus() when $default != null:
return $default(_that.connectivities);case _:
  return null;

}
}

}

/// @nodoc


class _ConnectivityStatus implements ConnectivityStatus {
  const _ConnectivityStatus({required final  List<String> connectivities}): _connectivities = connectivities;
  

 final  List<String> _connectivities;
@override List<String> get connectivities {
  if (_connectivities is EqualUnmodifiableListView) return _connectivities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_connectivities);
}


/// Create a copy of ConnectivityStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectivityStatusCopyWith<_ConnectivityStatus> get copyWith => __$ConnectivityStatusCopyWithImpl<_ConnectivityStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectivityStatus&&const DeepCollectionEquality().equals(other._connectivities, _connectivities));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_connectivities));

@override
String toString() {
  return 'ConnectivityStatus(connectivities: $connectivities)';
}


}

/// @nodoc
abstract mixin class _$ConnectivityStatusCopyWith<$Res> implements $ConnectivityStatusCopyWith<$Res> {
  factory _$ConnectivityStatusCopyWith(_ConnectivityStatus value, $Res Function(_ConnectivityStatus) _then) = __$ConnectivityStatusCopyWithImpl;
@override @useResult
$Res call({
 List<String> connectivities
});




}
/// @nodoc
class __$ConnectivityStatusCopyWithImpl<$Res>
    implements _$ConnectivityStatusCopyWith<$Res> {
  __$ConnectivityStatusCopyWithImpl(this._self, this._then);

  final _ConnectivityStatus _self;
  final $Res Function(_ConnectivityStatus) _then;

/// Create a copy of ConnectivityStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? connectivities = null,}) {
  return _then(_ConnectivityStatus(
connectivities: null == connectivities ? _self._connectivities : connectivities // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
