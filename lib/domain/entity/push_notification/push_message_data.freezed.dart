// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'push_message_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PushMessageData {

 String get targetScreen;
/// Create a copy of PushMessageData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PushMessageDataCopyWith<PushMessageData> get copyWith => _$PushMessageDataCopyWithImpl<PushMessageData>(this as PushMessageData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PushMessageData&&(identical(other.targetScreen, targetScreen) || other.targetScreen == targetScreen));
}


@override
int get hashCode => Object.hash(runtimeType,targetScreen);

@override
String toString() {
  return 'PushMessageData(targetScreen: $targetScreen)';
}


}

/// @nodoc
abstract mixin class $PushMessageDataCopyWith<$Res>  {
  factory $PushMessageDataCopyWith(PushMessageData value, $Res Function(PushMessageData) _then) = _$PushMessageDataCopyWithImpl;
@useResult
$Res call({
 String targetScreen
});




}
/// @nodoc
class _$PushMessageDataCopyWithImpl<$Res>
    implements $PushMessageDataCopyWith<$Res> {
  _$PushMessageDataCopyWithImpl(this._self, this._then);

  final PushMessageData _self;
  final $Res Function(PushMessageData) _then;

/// Create a copy of PushMessageData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? targetScreen = null,}) {
  return _then(_self.copyWith(
targetScreen: null == targetScreen ? _self.targetScreen : targetScreen // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PushMessageData].
extension PushMessageDataPatterns on PushMessageData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PushMessageData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PushMessageData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PushMessageData value)  $default,){
final _that = this;
switch (_that) {
case _PushMessageData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PushMessageData value)?  $default,){
final _that = this;
switch (_that) {
case _PushMessageData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String targetScreen)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PushMessageData() when $default != null:
return $default(_that.targetScreen);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String targetScreen)  $default,) {final _that = this;
switch (_that) {
case _PushMessageData():
return $default(_that.targetScreen);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String targetScreen)?  $default,) {final _that = this;
switch (_that) {
case _PushMessageData() when $default != null:
return $default(_that.targetScreen);case _:
  return null;

}
}

}

/// @nodoc


class _PushMessageData implements PushMessageData {
  const _PushMessageData({required this.targetScreen});
  

@override final  String targetScreen;

/// Create a copy of PushMessageData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PushMessageDataCopyWith<_PushMessageData> get copyWith => __$PushMessageDataCopyWithImpl<_PushMessageData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PushMessageData&&(identical(other.targetScreen, targetScreen) || other.targetScreen == targetScreen));
}


@override
int get hashCode => Object.hash(runtimeType,targetScreen);

@override
String toString() {
  return 'PushMessageData(targetScreen: $targetScreen)';
}


}

/// @nodoc
abstract mixin class _$PushMessageDataCopyWith<$Res> implements $PushMessageDataCopyWith<$Res> {
  factory _$PushMessageDataCopyWith(_PushMessageData value, $Res Function(_PushMessageData) _then) = __$PushMessageDataCopyWithImpl;
@override @useResult
$Res call({
 String targetScreen
});




}
/// @nodoc
class __$PushMessageDataCopyWithImpl<$Res>
    implements _$PushMessageDataCopyWith<$Res> {
  __$PushMessageDataCopyWithImpl(this._self, this._then);

  final _PushMessageData _self;
  final $Res Function(_PushMessageData) _then;

/// Create a copy of PushMessageData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? targetScreen = null,}) {
  return _then(_PushMessageData(
targetScreen: null == targetScreen ? _self.targetScreen : targetScreen // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
