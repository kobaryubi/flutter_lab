// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'etag_cached_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EtagCachedResponse {

 int get statusCode; List<String> get products; bool get isFromCache;
/// Create a copy of EtagCachedResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EtagCachedResponseCopyWith<EtagCachedResponse> get copyWith => _$EtagCachedResponseCopyWithImpl<EtagCachedResponse>(this as EtagCachedResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EtagCachedResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.isFromCache, isFromCache) || other.isFromCache == isFromCache));
}


@override
int get hashCode => Object.hash(runtimeType,statusCode,const DeepCollectionEquality().hash(products),isFromCache);

@override
String toString() {
  return 'EtagCachedResponse(statusCode: $statusCode, products: $products, isFromCache: $isFromCache)';
}


}

/// @nodoc
abstract mixin class $EtagCachedResponseCopyWith<$Res>  {
  factory $EtagCachedResponseCopyWith(EtagCachedResponse value, $Res Function(EtagCachedResponse) _then) = _$EtagCachedResponseCopyWithImpl;
@useResult
$Res call({
 int statusCode, List<String> products, bool isFromCache
});




}
/// @nodoc
class _$EtagCachedResponseCopyWithImpl<$Res>
    implements $EtagCachedResponseCopyWith<$Res> {
  _$EtagCachedResponseCopyWithImpl(this._self, this._then);

  final EtagCachedResponse _self;
  final $Res Function(EtagCachedResponse) _then;

/// Create a copy of EtagCachedResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? products = null,Object? isFromCache = null,}) {
  return _then(_self.copyWith(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<String>,isFromCache: null == isFromCache ? _self.isFromCache : isFromCache // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [EtagCachedResponse].
extension EtagCachedResponsePatterns on EtagCachedResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EtagCachedResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EtagCachedResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EtagCachedResponse value)  $default,){
final _that = this;
switch (_that) {
case _EtagCachedResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EtagCachedResponse value)?  $default,){
final _that = this;
switch (_that) {
case _EtagCachedResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int statusCode,  List<String> products,  bool isFromCache)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EtagCachedResponse() when $default != null:
return $default(_that.statusCode,_that.products,_that.isFromCache);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int statusCode,  List<String> products,  bool isFromCache)  $default,) {final _that = this;
switch (_that) {
case _EtagCachedResponse():
return $default(_that.statusCode,_that.products,_that.isFromCache);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int statusCode,  List<String> products,  bool isFromCache)?  $default,) {final _that = this;
switch (_that) {
case _EtagCachedResponse() when $default != null:
return $default(_that.statusCode,_that.products,_that.isFromCache);case _:
  return null;

}
}

}

/// @nodoc


class _EtagCachedResponse implements EtagCachedResponse {
  const _EtagCachedResponse({required this.statusCode, required final  List<String> products, required this.isFromCache}): _products = products;
  

@override final  int statusCode;
 final  List<String> _products;
@override List<String> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override final  bool isFromCache;

/// Create a copy of EtagCachedResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EtagCachedResponseCopyWith<_EtagCachedResponse> get copyWith => __$EtagCachedResponseCopyWithImpl<_EtagCachedResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EtagCachedResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.isFromCache, isFromCache) || other.isFromCache == isFromCache));
}


@override
int get hashCode => Object.hash(runtimeType,statusCode,const DeepCollectionEquality().hash(_products),isFromCache);

@override
String toString() {
  return 'EtagCachedResponse(statusCode: $statusCode, products: $products, isFromCache: $isFromCache)';
}


}

/// @nodoc
abstract mixin class _$EtagCachedResponseCopyWith<$Res> implements $EtagCachedResponseCopyWith<$Res> {
  factory _$EtagCachedResponseCopyWith(_EtagCachedResponse value, $Res Function(_EtagCachedResponse) _then) = __$EtagCachedResponseCopyWithImpl;
@override @useResult
$Res call({
 int statusCode, List<String> products, bool isFromCache
});




}
/// @nodoc
class __$EtagCachedResponseCopyWithImpl<$Res>
    implements _$EtagCachedResponseCopyWith<$Res> {
  __$EtagCachedResponseCopyWithImpl(this._self, this._then);

  final _EtagCachedResponse _self;
  final $Res Function(_EtagCachedResponse) _then;

/// Create a copy of EtagCachedResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? products = null,Object? isFromCache = null,}) {
  return _then(_EtagCachedResponse(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<String>,isFromCache: null == isFromCache ? _self.isFromCache : isFromCache // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
