// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_notification_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocalNotificationMessage {

 int get id; String get title; String get body; LocalNotificationChannel get channel; String? get imageUrl; Map<String, Object?> get data;
/// Create a copy of LocalNotificationMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalNotificationMessageCopyWith<LocalNotificationMessage> get copyWith => _$LocalNotificationMessageCopyWithImpl<LocalNotificationMessage>(this as LocalNotificationMessage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalNotificationMessage&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,body,channel,imageUrl,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'LocalNotificationMessage(id: $id, title: $title, body: $body, channel: $channel, imageUrl: $imageUrl, data: $data)';
}


}

/// @nodoc
abstract mixin class $LocalNotificationMessageCopyWith<$Res>  {
  factory $LocalNotificationMessageCopyWith(LocalNotificationMessage value, $Res Function(LocalNotificationMessage) _then) = _$LocalNotificationMessageCopyWithImpl;
@useResult
$Res call({
 int id, String title, String body, LocalNotificationChannel channel, String? imageUrl, Map<String, Object?> data
});




}
/// @nodoc
class _$LocalNotificationMessageCopyWithImpl<$Res>
    implements $LocalNotificationMessageCopyWith<$Res> {
  _$LocalNotificationMessageCopyWithImpl(this._self, this._then);

  final LocalNotificationMessage _self;
  final $Res Function(LocalNotificationMessage) _then;

/// Create a copy of LocalNotificationMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? body = null,Object? channel = null,Object? imageUrl = freezed,Object? data = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as LocalNotificationChannel,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [LocalNotificationMessage].
extension LocalNotificationMessagePatterns on LocalNotificationMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocalNotificationMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocalNotificationMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocalNotificationMessage value)  $default,){
final _that = this;
switch (_that) {
case _LocalNotificationMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocalNotificationMessage value)?  $default,){
final _that = this;
switch (_that) {
case _LocalNotificationMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String body,  LocalNotificationChannel channel,  String? imageUrl,  Map<String, Object?> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocalNotificationMessage() when $default != null:
return $default(_that.id,_that.title,_that.body,_that.channel,_that.imageUrl,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String body,  LocalNotificationChannel channel,  String? imageUrl,  Map<String, Object?> data)  $default,) {final _that = this;
switch (_that) {
case _LocalNotificationMessage():
return $default(_that.id,_that.title,_that.body,_that.channel,_that.imageUrl,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String body,  LocalNotificationChannel channel,  String? imageUrl,  Map<String, Object?> data)?  $default,) {final _that = this;
switch (_that) {
case _LocalNotificationMessage() when $default != null:
return $default(_that.id,_that.title,_that.body,_that.channel,_that.imageUrl,_that.data);case _:
  return null;

}
}

}

/// @nodoc


class _LocalNotificationMessage implements LocalNotificationMessage {
  const _LocalNotificationMessage({required this.id, required this.title, required this.body, required this.channel, required this.imageUrl, final  Map<String, Object?> data = const <String, Object?>{}}): _data = data;
  

@override final  int id;
@override final  String title;
@override final  String body;
@override final  LocalNotificationChannel channel;
@override final  String? imageUrl;
 final  Map<String, Object?> _data;
@override@JsonKey() Map<String, Object?> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of LocalNotificationMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocalNotificationMessageCopyWith<_LocalNotificationMessage> get copyWith => __$LocalNotificationMessageCopyWithImpl<_LocalNotificationMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocalNotificationMessage&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,body,channel,imageUrl,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'LocalNotificationMessage(id: $id, title: $title, body: $body, channel: $channel, imageUrl: $imageUrl, data: $data)';
}


}

/// @nodoc
abstract mixin class _$LocalNotificationMessageCopyWith<$Res> implements $LocalNotificationMessageCopyWith<$Res> {
  factory _$LocalNotificationMessageCopyWith(_LocalNotificationMessage value, $Res Function(_LocalNotificationMessage) _then) = __$LocalNotificationMessageCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String body, LocalNotificationChannel channel, String? imageUrl, Map<String, Object?> data
});




}
/// @nodoc
class __$LocalNotificationMessageCopyWithImpl<$Res>
    implements _$LocalNotificationMessageCopyWith<$Res> {
  __$LocalNotificationMessageCopyWithImpl(this._self, this._then);

  final _LocalNotificationMessage _self;
  final $Res Function(_LocalNotificationMessage) _then;

/// Create a copy of LocalNotificationMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? body = null,Object? channel = null,Object? imageUrl = freezed,Object? data = null,}) {
  return _then(_LocalNotificationMessage(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as LocalNotificationChannel,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}


}

// dart format on
