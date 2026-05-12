// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'push_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PushMessage {

 String? get messageId; PushNotification get notification; String? get channelId; String? get imageUrl; PushMessageData get data;
/// Create a copy of PushMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PushMessageCopyWith<PushMessage> get copyWith => _$PushMessageCopyWithImpl<PushMessage>(this as PushMessage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PushMessage&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.notification, notification) || other.notification == notification)&&(identical(other.channelId, channelId) || other.channelId == channelId)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,messageId,notification,channelId,imageUrl,data);

@override
String toString() {
  return 'PushMessage(messageId: $messageId, notification: $notification, channelId: $channelId, imageUrl: $imageUrl, data: $data)';
}


}

/// @nodoc
abstract mixin class $PushMessageCopyWith<$Res>  {
  factory $PushMessageCopyWith(PushMessage value, $Res Function(PushMessage) _then) = _$PushMessageCopyWithImpl;
@useResult
$Res call({
 String? messageId, PushNotification notification, String? channelId, String? imageUrl, PushMessageData data
});


$PushNotificationCopyWith<$Res> get notification;$PushMessageDataCopyWith<$Res> get data;

}
/// @nodoc
class _$PushMessageCopyWithImpl<$Res>
    implements $PushMessageCopyWith<$Res> {
  _$PushMessageCopyWithImpl(this._self, this._then);

  final PushMessage _self;
  final $Res Function(PushMessage) _then;

/// Create a copy of PushMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messageId = freezed,Object? notification = null,Object? channelId = freezed,Object? imageUrl = freezed,Object? data = null,}) {
  return _then(_self.copyWith(
messageId: freezed == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String?,notification: null == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as PushNotification,channelId: freezed == channelId ? _self.channelId : channelId // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PushMessageData,
  ));
}
/// Create a copy of PushMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PushNotificationCopyWith<$Res> get notification {
  
  return $PushNotificationCopyWith<$Res>(_self.notification, (value) {
    return _then(_self.copyWith(notification: value));
  });
}/// Create a copy of PushMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PushMessageDataCopyWith<$Res> get data {
  
  return $PushMessageDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [PushMessage].
extension PushMessagePatterns on PushMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PushMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PushMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PushMessage value)  $default,){
final _that = this;
switch (_that) {
case _PushMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PushMessage value)?  $default,){
final _that = this;
switch (_that) {
case _PushMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? messageId,  PushNotification notification,  String? channelId,  String? imageUrl,  PushMessageData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PushMessage() when $default != null:
return $default(_that.messageId,_that.notification,_that.channelId,_that.imageUrl,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? messageId,  PushNotification notification,  String? channelId,  String? imageUrl,  PushMessageData data)  $default,) {final _that = this;
switch (_that) {
case _PushMessage():
return $default(_that.messageId,_that.notification,_that.channelId,_that.imageUrl,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? messageId,  PushNotification notification,  String? channelId,  String? imageUrl,  PushMessageData data)?  $default,) {final _that = this;
switch (_that) {
case _PushMessage() when $default != null:
return $default(_that.messageId,_that.notification,_that.channelId,_that.imageUrl,_that.data);case _:
  return null;

}
}

}

/// @nodoc


class _PushMessage implements PushMessage {
  const _PushMessage({required this.messageId, required this.notification, required this.channelId, required this.imageUrl, required this.data});
  

@override final  String? messageId;
@override final  PushNotification notification;
@override final  String? channelId;
@override final  String? imageUrl;
@override final  PushMessageData data;

/// Create a copy of PushMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PushMessageCopyWith<_PushMessage> get copyWith => __$PushMessageCopyWithImpl<_PushMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PushMessage&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.notification, notification) || other.notification == notification)&&(identical(other.channelId, channelId) || other.channelId == channelId)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,messageId,notification,channelId,imageUrl,data);

@override
String toString() {
  return 'PushMessage(messageId: $messageId, notification: $notification, channelId: $channelId, imageUrl: $imageUrl, data: $data)';
}


}

/// @nodoc
abstract mixin class _$PushMessageCopyWith<$Res> implements $PushMessageCopyWith<$Res> {
  factory _$PushMessageCopyWith(_PushMessage value, $Res Function(_PushMessage) _then) = __$PushMessageCopyWithImpl;
@override @useResult
$Res call({
 String? messageId, PushNotification notification, String? channelId, String? imageUrl, PushMessageData data
});


@override $PushNotificationCopyWith<$Res> get notification;@override $PushMessageDataCopyWith<$Res> get data;

}
/// @nodoc
class __$PushMessageCopyWithImpl<$Res>
    implements _$PushMessageCopyWith<$Res> {
  __$PushMessageCopyWithImpl(this._self, this._then);

  final _PushMessage _self;
  final $Res Function(_PushMessage) _then;

/// Create a copy of PushMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messageId = freezed,Object? notification = null,Object? channelId = freezed,Object? imageUrl = freezed,Object? data = null,}) {
  return _then(_PushMessage(
messageId: freezed == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String?,notification: null == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as PushNotification,channelId: freezed == channelId ? _self.channelId : channelId // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PushMessageData,
  ));
}

/// Create a copy of PushMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PushNotificationCopyWith<$Res> get notification {
  
  return $PushNotificationCopyWith<$Res>(_self.notification, (value) {
    return _then(_self.copyWith(notification: value));
  });
}/// Create a copy of PushMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PushMessageDataCopyWith<$Res> get data {
  
  return $PushMessageDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
