// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'revalidating_image_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RevalidatingImageUiState {

/// The fetched image URL. `null` before the first fetch.
 AsyncValue<Uri>? get imageUrl;/// HTTP status code of the most recent revalidation: `304` (cache reused)
/// or `200` (cache replaced). `null` until the image has been loaded once.
 int? get lastStatusCode;
/// Create a copy of RevalidatingImageUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RevalidatingImageUiStateCopyWith<RevalidatingImageUiState> get copyWith => _$RevalidatingImageUiStateCopyWithImpl<RevalidatingImageUiState>(this as RevalidatingImageUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RevalidatingImageUiState&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.lastStatusCode, lastStatusCode) || other.lastStatusCode == lastStatusCode));
}


@override
int get hashCode => Object.hash(runtimeType,imageUrl,lastStatusCode);

@override
String toString() {
  return 'RevalidatingImageUiState(imageUrl: $imageUrl, lastStatusCode: $lastStatusCode)';
}


}

/// @nodoc
abstract mixin class $RevalidatingImageUiStateCopyWith<$Res>  {
  factory $RevalidatingImageUiStateCopyWith(RevalidatingImageUiState value, $Res Function(RevalidatingImageUiState) _then) = _$RevalidatingImageUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<Uri>? imageUrl, int? lastStatusCode
});




}
/// @nodoc
class _$RevalidatingImageUiStateCopyWithImpl<$Res>
    implements $RevalidatingImageUiStateCopyWith<$Res> {
  _$RevalidatingImageUiStateCopyWithImpl(this._self, this._then);

  final RevalidatingImageUiState _self;
  final $Res Function(RevalidatingImageUiState) _then;

/// Create a copy of RevalidatingImageUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageUrl = freezed,Object? lastStatusCode = freezed,}) {
  return _then(_self.copyWith(
imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as AsyncValue<Uri>?,lastStatusCode: freezed == lastStatusCode ? _self.lastStatusCode : lastStatusCode // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [RevalidatingImageUiState].
extension RevalidatingImageUiStatePatterns on RevalidatingImageUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RevalidatingImageUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RevalidatingImageUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RevalidatingImageUiState value)  $default,){
final _that = this;
switch (_that) {
case _RevalidatingImageUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RevalidatingImageUiState value)?  $default,){
final _that = this;
switch (_that) {
case _RevalidatingImageUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<Uri>? imageUrl,  int? lastStatusCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RevalidatingImageUiState() when $default != null:
return $default(_that.imageUrl,_that.lastStatusCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<Uri>? imageUrl,  int? lastStatusCode)  $default,) {final _that = this;
switch (_that) {
case _RevalidatingImageUiState():
return $default(_that.imageUrl,_that.lastStatusCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<Uri>? imageUrl,  int? lastStatusCode)?  $default,) {final _that = this;
switch (_that) {
case _RevalidatingImageUiState() when $default != null:
return $default(_that.imageUrl,_that.lastStatusCode);case _:
  return null;

}
}

}

/// @nodoc


class _RevalidatingImageUiState implements RevalidatingImageUiState {
  const _RevalidatingImageUiState({this.imageUrl, this.lastStatusCode});
  

/// The fetched image URL. `null` before the first fetch.
@override final  AsyncValue<Uri>? imageUrl;
/// HTTP status code of the most recent revalidation: `304` (cache reused)
/// or `200` (cache replaced). `null` until the image has been loaded once.
@override final  int? lastStatusCode;

/// Create a copy of RevalidatingImageUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RevalidatingImageUiStateCopyWith<_RevalidatingImageUiState> get copyWith => __$RevalidatingImageUiStateCopyWithImpl<_RevalidatingImageUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RevalidatingImageUiState&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.lastStatusCode, lastStatusCode) || other.lastStatusCode == lastStatusCode));
}


@override
int get hashCode => Object.hash(runtimeType,imageUrl,lastStatusCode);

@override
String toString() {
  return 'RevalidatingImageUiState(imageUrl: $imageUrl, lastStatusCode: $lastStatusCode)';
}


}

/// @nodoc
abstract mixin class _$RevalidatingImageUiStateCopyWith<$Res> implements $RevalidatingImageUiStateCopyWith<$Res> {
  factory _$RevalidatingImageUiStateCopyWith(_RevalidatingImageUiState value, $Res Function(_RevalidatingImageUiState) _then) = __$RevalidatingImageUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<Uri>? imageUrl, int? lastStatusCode
});




}
/// @nodoc
class __$RevalidatingImageUiStateCopyWithImpl<$Res>
    implements _$RevalidatingImageUiStateCopyWith<$Res> {
  __$RevalidatingImageUiStateCopyWithImpl(this._self, this._then);

  final _RevalidatingImageUiState _self;
  final $Res Function(_RevalidatingImageUiState) _then;

/// Create a copy of RevalidatingImageUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageUrl = freezed,Object? lastStatusCode = freezed,}) {
  return _then(_RevalidatingImageUiState(
imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as AsyncValue<Uri>?,lastStatusCode: freezed == lastStatusCode ? _self.lastStatusCode : lastStatusCode // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
