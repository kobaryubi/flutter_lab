// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cached_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CachedResponse {

 int get statusCode; String get body; bool get isFromCache;
/// Create a copy of CachedResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CachedResponseCopyWith<CachedResponse> get copyWith => _$CachedResponseCopyWithImpl<CachedResponse>(this as CachedResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CachedResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.body, body) || other.body == body)&&(identical(other.isFromCache, isFromCache) || other.isFromCache == isFromCache));
}


@override
int get hashCode => Object.hash(runtimeType,statusCode,body,isFromCache);

@override
String toString() {
  return 'CachedResponse(statusCode: $statusCode, body: $body, isFromCache: $isFromCache)';
}


}

/// @nodoc
abstract mixin class $CachedResponseCopyWith<$Res>  {
  factory $CachedResponseCopyWith(CachedResponse value, $Res Function(CachedResponse) _then) = _$CachedResponseCopyWithImpl;
@useResult
$Res call({
 int statusCode, String body, bool isFromCache
});




}
/// @nodoc
class _$CachedResponseCopyWithImpl<$Res>
    implements $CachedResponseCopyWith<$Res> {
  _$CachedResponseCopyWithImpl(this._self, this._then);

  final CachedResponse _self;
  final $Res Function(CachedResponse) _then;

/// Create a copy of CachedResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? body = null,Object? isFromCache = null,}) {
  return _then(_self.copyWith(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,isFromCache: null == isFromCache ? _self.isFromCache : isFromCache // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CachedResponse].
extension CachedResponsePatterns on CachedResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CachedResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CachedResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CachedResponse value)  $default,){
final _that = this;
switch (_that) {
case _CachedResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CachedResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CachedResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int statusCode,  String body,  bool isFromCache)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CachedResponse() when $default != null:
return $default(_that.statusCode,_that.body,_that.isFromCache);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int statusCode,  String body,  bool isFromCache)  $default,) {final _that = this;
switch (_that) {
case _CachedResponse():
return $default(_that.statusCode,_that.body,_that.isFromCache);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int statusCode,  String body,  bool isFromCache)?  $default,) {final _that = this;
switch (_that) {
case _CachedResponse() when $default != null:
return $default(_that.statusCode,_that.body,_that.isFromCache);case _:
  return null;

}
}

}

/// @nodoc


class _CachedResponse implements CachedResponse {
  const _CachedResponse({required this.statusCode, required this.body, required this.isFromCache});
  

@override final  int statusCode;
@override final  String body;
@override final  bool isFromCache;

/// Create a copy of CachedResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CachedResponseCopyWith<_CachedResponse> get copyWith => __$CachedResponseCopyWithImpl<_CachedResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CachedResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.body, body) || other.body == body)&&(identical(other.isFromCache, isFromCache) || other.isFromCache == isFromCache));
}


@override
int get hashCode => Object.hash(runtimeType,statusCode,body,isFromCache);

@override
String toString() {
  return 'CachedResponse(statusCode: $statusCode, body: $body, isFromCache: $isFromCache)';
}


}

/// @nodoc
abstract mixin class _$CachedResponseCopyWith<$Res> implements $CachedResponseCopyWith<$Res> {
  factory _$CachedResponseCopyWith(_CachedResponse value, $Res Function(_CachedResponse) _then) = __$CachedResponseCopyWithImpl;
@override @useResult
$Res call({
 int statusCode, String body, bool isFromCache
});




}
/// @nodoc
class __$CachedResponseCopyWithImpl<$Res>
    implements _$CachedResponseCopyWith<$Res> {
  __$CachedResponseCopyWithImpl(this._self, this._then);

  final _CachedResponse _self;
  final $Res Function(_CachedResponse) _then;

/// Create a copy of CachedResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? body = null,Object? isFromCache = null,}) {
  return _then(_CachedResponse(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,isFromCache: null == isFromCache ? _self.isFromCache : isFromCache // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
