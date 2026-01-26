// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 's3_image_cache_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$S3ImageCacheResult {

 String get etag;
/// Create a copy of S3ImageCacheResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$S3ImageCacheResultCopyWith<S3ImageCacheResult> get copyWith => _$S3ImageCacheResultCopyWithImpl<S3ImageCacheResult>(this as S3ImageCacheResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is S3ImageCacheResult&&(identical(other.etag, etag) || other.etag == etag));
}


@override
int get hashCode => Object.hash(runtimeType,etag);

@override
String toString() {
  return 'S3ImageCacheResult(etag: $etag)';
}


}

/// @nodoc
abstract mixin class $S3ImageCacheResultCopyWith<$Res>  {
  factory $S3ImageCacheResultCopyWith(S3ImageCacheResult value, $Res Function(S3ImageCacheResult) _then) = _$S3ImageCacheResultCopyWithImpl;
@useResult
$Res call({
 String etag
});




}
/// @nodoc
class _$S3ImageCacheResultCopyWithImpl<$Res>
    implements $S3ImageCacheResultCopyWith<$Res> {
  _$S3ImageCacheResultCopyWithImpl(this._self, this._then);

  final S3ImageCacheResult _self;
  final $Res Function(S3ImageCacheResult) _then;

/// Create a copy of S3ImageCacheResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? etag = null,}) {
  return _then(_self.copyWith(
etag: null == etag ? _self.etag : etag // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [S3ImageCacheResult].
extension S3ImageCacheResultPatterns on S3ImageCacheResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( S3ImageCacheResultCacheHit value)?  cacheHit,TResult Function( S3ImageCacheResultCacheMiss value)?  cacheMiss,required TResult orElse(),}){
final _that = this;
switch (_that) {
case S3ImageCacheResultCacheHit() when cacheHit != null:
return cacheHit(_that);case S3ImageCacheResultCacheMiss() when cacheMiss != null:
return cacheMiss(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( S3ImageCacheResultCacheHit value)  cacheHit,required TResult Function( S3ImageCacheResultCacheMiss value)  cacheMiss,}){
final _that = this;
switch (_that) {
case S3ImageCacheResultCacheHit():
return cacheHit(_that);case S3ImageCacheResultCacheMiss():
return cacheMiss(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( S3ImageCacheResultCacheHit value)?  cacheHit,TResult? Function( S3ImageCacheResultCacheMiss value)?  cacheMiss,}){
final _that = this;
switch (_that) {
case S3ImageCacheResultCacheHit() when cacheHit != null:
return cacheHit(_that);case S3ImageCacheResultCacheMiss() when cacheMiss != null:
return cacheMiss(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String etag)?  cacheHit,TResult Function( String etag,  Uint8List imageData)?  cacheMiss,required TResult orElse(),}) {final _that = this;
switch (_that) {
case S3ImageCacheResultCacheHit() when cacheHit != null:
return cacheHit(_that.etag);case S3ImageCacheResultCacheMiss() when cacheMiss != null:
return cacheMiss(_that.etag,_that.imageData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String etag)  cacheHit,required TResult Function( String etag,  Uint8List imageData)  cacheMiss,}) {final _that = this;
switch (_that) {
case S3ImageCacheResultCacheHit():
return cacheHit(_that.etag);case S3ImageCacheResultCacheMiss():
return cacheMiss(_that.etag,_that.imageData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String etag)?  cacheHit,TResult? Function( String etag,  Uint8List imageData)?  cacheMiss,}) {final _that = this;
switch (_that) {
case S3ImageCacheResultCacheHit() when cacheHit != null:
return cacheHit(_that.etag);case S3ImageCacheResultCacheMiss() when cacheMiss != null:
return cacheMiss(_that.etag,_that.imageData);case _:
  return null;

}
}

}

/// @nodoc


class S3ImageCacheResultCacheHit implements S3ImageCacheResult {
  const S3ImageCacheResultCacheHit({required this.etag});
  

@override final  String etag;

/// Create a copy of S3ImageCacheResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$S3ImageCacheResultCacheHitCopyWith<S3ImageCacheResultCacheHit> get copyWith => _$S3ImageCacheResultCacheHitCopyWithImpl<S3ImageCacheResultCacheHit>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is S3ImageCacheResultCacheHit&&(identical(other.etag, etag) || other.etag == etag));
}


@override
int get hashCode => Object.hash(runtimeType,etag);

@override
String toString() {
  return 'S3ImageCacheResult.cacheHit(etag: $etag)';
}


}

/// @nodoc
abstract mixin class $S3ImageCacheResultCacheHitCopyWith<$Res> implements $S3ImageCacheResultCopyWith<$Res> {
  factory $S3ImageCacheResultCacheHitCopyWith(S3ImageCacheResultCacheHit value, $Res Function(S3ImageCacheResultCacheHit) _then) = _$S3ImageCacheResultCacheHitCopyWithImpl;
@override @useResult
$Res call({
 String etag
});




}
/// @nodoc
class _$S3ImageCacheResultCacheHitCopyWithImpl<$Res>
    implements $S3ImageCacheResultCacheHitCopyWith<$Res> {
  _$S3ImageCacheResultCacheHitCopyWithImpl(this._self, this._then);

  final S3ImageCacheResultCacheHit _self;
  final $Res Function(S3ImageCacheResultCacheHit) _then;

/// Create a copy of S3ImageCacheResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? etag = null,}) {
  return _then(S3ImageCacheResultCacheHit(
etag: null == etag ? _self.etag : etag // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class S3ImageCacheResultCacheMiss implements S3ImageCacheResult {
  const S3ImageCacheResultCacheMiss({required this.etag, required this.imageData});
  

@override final  String etag;
 final  Uint8List imageData;

/// Create a copy of S3ImageCacheResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$S3ImageCacheResultCacheMissCopyWith<S3ImageCacheResultCacheMiss> get copyWith => _$S3ImageCacheResultCacheMissCopyWithImpl<S3ImageCacheResultCacheMiss>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is S3ImageCacheResultCacheMiss&&(identical(other.etag, etag) || other.etag == etag)&&const DeepCollectionEquality().equals(other.imageData, imageData));
}


@override
int get hashCode => Object.hash(runtimeType,etag,const DeepCollectionEquality().hash(imageData));

@override
String toString() {
  return 'S3ImageCacheResult.cacheMiss(etag: $etag, imageData: $imageData)';
}


}

/// @nodoc
abstract mixin class $S3ImageCacheResultCacheMissCopyWith<$Res> implements $S3ImageCacheResultCopyWith<$Res> {
  factory $S3ImageCacheResultCacheMissCopyWith(S3ImageCacheResultCacheMiss value, $Res Function(S3ImageCacheResultCacheMiss) _then) = _$S3ImageCacheResultCacheMissCopyWithImpl;
@override @useResult
$Res call({
 String etag, Uint8List imageData
});




}
/// @nodoc
class _$S3ImageCacheResultCacheMissCopyWithImpl<$Res>
    implements $S3ImageCacheResultCacheMissCopyWith<$Res> {
  _$S3ImageCacheResultCacheMissCopyWithImpl(this._self, this._then);

  final S3ImageCacheResultCacheMiss _self;
  final $Res Function(S3ImageCacheResultCacheMiss) _then;

/// Create a copy of S3ImageCacheResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? etag = null,Object? imageData = null,}) {
  return _then(S3ImageCacheResultCacheMiss(
etag: null == etag ? _self.etag : etag // ignore: cast_nullable_to_non_nullable
as String,imageData: null == imageData ? _self.imageData : imageData // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

// dart format on
