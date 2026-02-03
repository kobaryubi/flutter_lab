// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'push_notification_permission.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PushNotificationPermission {

 String get authorizationStatus; String? get deviceToken;
/// Create a copy of PushNotificationPermission
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PushNotificationPermissionCopyWith<PushNotificationPermission> get copyWith => _$PushNotificationPermissionCopyWithImpl<PushNotificationPermission>(this as PushNotificationPermission, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PushNotificationPermission&&(identical(other.authorizationStatus, authorizationStatus) || other.authorizationStatus == authorizationStatus)&&(identical(other.deviceToken, deviceToken) || other.deviceToken == deviceToken));
}


@override
int get hashCode => Object.hash(runtimeType,authorizationStatus,deviceToken);

@override
String toString() {
  return 'PushNotificationPermission(authorizationStatus: $authorizationStatus, deviceToken: $deviceToken)';
}


}

/// @nodoc
abstract mixin class $PushNotificationPermissionCopyWith<$Res>  {
  factory $PushNotificationPermissionCopyWith(PushNotificationPermission value, $Res Function(PushNotificationPermission) _then) = _$PushNotificationPermissionCopyWithImpl;
@useResult
$Res call({
 String authorizationStatus, String? deviceToken
});




}
/// @nodoc
class _$PushNotificationPermissionCopyWithImpl<$Res>
    implements $PushNotificationPermissionCopyWith<$Res> {
  _$PushNotificationPermissionCopyWithImpl(this._self, this._then);

  final PushNotificationPermission _self;
  final $Res Function(PushNotificationPermission) _then;

/// Create a copy of PushNotificationPermission
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? authorizationStatus = null,Object? deviceToken = freezed,}) {
  return _then(_self.copyWith(
authorizationStatus: null == authorizationStatus ? _self.authorizationStatus : authorizationStatus // ignore: cast_nullable_to_non_nullable
as String,deviceToken: freezed == deviceToken ? _self.deviceToken : deviceToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PushNotificationPermission].
extension PushNotificationPermissionPatterns on PushNotificationPermission {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PushNotificationPermission value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PushNotificationPermission() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PushNotificationPermission value)  $default,){
final _that = this;
switch (_that) {
case _PushNotificationPermission():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PushNotificationPermission value)?  $default,){
final _that = this;
switch (_that) {
case _PushNotificationPermission() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String authorizationStatus,  String? deviceToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PushNotificationPermission() when $default != null:
return $default(_that.authorizationStatus,_that.deviceToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String authorizationStatus,  String? deviceToken)  $default,) {final _that = this;
switch (_that) {
case _PushNotificationPermission():
return $default(_that.authorizationStatus,_that.deviceToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String authorizationStatus,  String? deviceToken)?  $default,) {final _that = this;
switch (_that) {
case _PushNotificationPermission() when $default != null:
return $default(_that.authorizationStatus,_that.deviceToken);case _:
  return null;

}
}

}

/// @nodoc


class _PushNotificationPermission implements PushNotificationPermission {
  const _PushNotificationPermission({required this.authorizationStatus, required this.deviceToken});
  

@override final  String authorizationStatus;
@override final  String? deviceToken;

/// Create a copy of PushNotificationPermission
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PushNotificationPermissionCopyWith<_PushNotificationPermission> get copyWith => __$PushNotificationPermissionCopyWithImpl<_PushNotificationPermission>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PushNotificationPermission&&(identical(other.authorizationStatus, authorizationStatus) || other.authorizationStatus == authorizationStatus)&&(identical(other.deviceToken, deviceToken) || other.deviceToken == deviceToken));
}


@override
int get hashCode => Object.hash(runtimeType,authorizationStatus,deviceToken);

@override
String toString() {
  return 'PushNotificationPermission(authorizationStatus: $authorizationStatus, deviceToken: $deviceToken)';
}


}

/// @nodoc
abstract mixin class _$PushNotificationPermissionCopyWith<$Res> implements $PushNotificationPermissionCopyWith<$Res> {
  factory _$PushNotificationPermissionCopyWith(_PushNotificationPermission value, $Res Function(_PushNotificationPermission) _then) = __$PushNotificationPermissionCopyWithImpl;
@override @useResult
$Res call({
 String authorizationStatus, String? deviceToken
});




}
/// @nodoc
class __$PushNotificationPermissionCopyWithImpl<$Res>
    implements _$PushNotificationPermissionCopyWith<$Res> {
  __$PushNotificationPermissionCopyWithImpl(this._self, this._then);

  final _PushNotificationPermission _self;
  final $Res Function(_PushNotificationPermission) _then;

/// Create a copy of PushNotificationPermission
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? authorizationStatus = null,Object? deviceToken = freezed,}) {
  return _then(_PushNotificationPermission(
authorizationStatus: null == authorizationStatus ? _self.authorizationStatus : authorizationStatus // ignore: cast_nullable_to_non_nullable
as String,deviceToken: freezed == deviceToken ? _self.deviceToken : deviceToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
