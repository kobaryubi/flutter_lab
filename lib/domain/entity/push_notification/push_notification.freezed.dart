// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'push_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PushNotification {

 String get title; String get body; int? get badge;
/// Create a copy of PushNotification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PushNotificationCopyWith<PushNotification> get copyWith => _$PushNotificationCopyWithImpl<PushNotification>(this as PushNotification, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PushNotification&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.badge, badge) || other.badge == badge));
}


@override
int get hashCode => Object.hash(runtimeType,title,body,badge);

@override
String toString() {
  return 'PushNotification(title: $title, body: $body, badge: $badge)';
}


}

/// @nodoc
abstract mixin class $PushNotificationCopyWith<$Res>  {
  factory $PushNotificationCopyWith(PushNotification value, $Res Function(PushNotification) _then) = _$PushNotificationCopyWithImpl;
@useResult
$Res call({
 String title, String body, int? badge
});




}
/// @nodoc
class _$PushNotificationCopyWithImpl<$Res>
    implements $PushNotificationCopyWith<$Res> {
  _$PushNotificationCopyWithImpl(this._self, this._then);

  final PushNotification _self;
  final $Res Function(PushNotification) _then;

/// Create a copy of PushNotification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? body = null,Object? badge = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,badge: freezed == badge ? _self.badge : badge // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PushNotification].
extension PushNotificationPatterns on PushNotification {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PushNotification value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PushNotification() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PushNotification value)  $default,){
final _that = this;
switch (_that) {
case _PushNotification():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PushNotification value)?  $default,){
final _that = this;
switch (_that) {
case _PushNotification() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String body,  int? badge)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PushNotification() when $default != null:
return $default(_that.title,_that.body,_that.badge);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String body,  int? badge)  $default,) {final _that = this;
switch (_that) {
case _PushNotification():
return $default(_that.title,_that.body,_that.badge);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String body,  int? badge)?  $default,) {final _that = this;
switch (_that) {
case _PushNotification() when $default != null:
return $default(_that.title,_that.body,_that.badge);case _:
  return null;

}
}

}

/// @nodoc


class _PushNotification implements PushNotification {
  const _PushNotification({required this.title, required this.body, required this.badge});
  

@override final  String title;
@override final  String body;
@override final  int? badge;

/// Create a copy of PushNotification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PushNotificationCopyWith<_PushNotification> get copyWith => __$PushNotificationCopyWithImpl<_PushNotification>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PushNotification&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.badge, badge) || other.badge == badge));
}


@override
int get hashCode => Object.hash(runtimeType,title,body,badge);

@override
String toString() {
  return 'PushNotification(title: $title, body: $body, badge: $badge)';
}


}

/// @nodoc
abstract mixin class _$PushNotificationCopyWith<$Res> implements $PushNotificationCopyWith<$Res> {
  factory _$PushNotificationCopyWith(_PushNotification value, $Res Function(_PushNotification) _then) = __$PushNotificationCopyWithImpl;
@override @useResult
$Res call({
 String title, String body, int? badge
});




}
/// @nodoc
class __$PushNotificationCopyWithImpl<$Res>
    implements _$PushNotificationCopyWith<$Res> {
  __$PushNotificationCopyWithImpl(this._self, this._then);

  final _PushNotification _self;
  final $Res Function(_PushNotification) _then;

/// Create a copy of PushNotification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? body = null,Object? badge = freezed,}) {
  return _then(_PushNotification(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,badge: freezed == badge ? _self.badge : badge // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
