// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cookie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Cookie {

 String get name; String get value; bool get isHttpOnly; bool get isSecure; String? get domain; String? get path;
/// Create a copy of Cookie
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CookieCopyWith<Cookie> get copyWith => _$CookieCopyWithImpl<Cookie>(this as Cookie, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cookie&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value)&&(identical(other.isHttpOnly, isHttpOnly) || other.isHttpOnly == isHttpOnly)&&(identical(other.isSecure, isSecure) || other.isSecure == isSecure)&&(identical(other.domain, domain) || other.domain == domain)&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,name,value,isHttpOnly,isSecure,domain,path);

@override
String toString() {
  return 'Cookie(name: $name, value: $value, isHttpOnly: $isHttpOnly, isSecure: $isSecure, domain: $domain, path: $path)';
}


}

/// @nodoc
abstract mixin class $CookieCopyWith<$Res>  {
  factory $CookieCopyWith(Cookie value, $Res Function(Cookie) _then) = _$CookieCopyWithImpl;
@useResult
$Res call({
 String name, String value, bool isHttpOnly, bool isSecure, String? domain, String? path
});




}
/// @nodoc
class _$CookieCopyWithImpl<$Res>
    implements $CookieCopyWith<$Res> {
  _$CookieCopyWithImpl(this._self, this._then);

  final Cookie _self;
  final $Res Function(Cookie) _then;

/// Create a copy of Cookie
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? value = null,Object? isHttpOnly = null,Object? isSecure = null,Object? domain = freezed,Object? path = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,isHttpOnly: null == isHttpOnly ? _self.isHttpOnly : isHttpOnly // ignore: cast_nullable_to_non_nullable
as bool,isSecure: null == isSecure ? _self.isSecure : isSecure // ignore: cast_nullable_to_non_nullable
as bool,domain: freezed == domain ? _self.domain : domain // ignore: cast_nullable_to_non_nullable
as String?,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Cookie].
extension CookiePatterns on Cookie {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Cookie value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Cookie() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Cookie value)  $default,){
final _that = this;
switch (_that) {
case _Cookie():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Cookie value)?  $default,){
final _that = this;
switch (_that) {
case _Cookie() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String value,  bool isHttpOnly,  bool isSecure,  String? domain,  String? path)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Cookie() when $default != null:
return $default(_that.name,_that.value,_that.isHttpOnly,_that.isSecure,_that.domain,_that.path);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String value,  bool isHttpOnly,  bool isSecure,  String? domain,  String? path)  $default,) {final _that = this;
switch (_that) {
case _Cookie():
return $default(_that.name,_that.value,_that.isHttpOnly,_that.isSecure,_that.domain,_that.path);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String value,  bool isHttpOnly,  bool isSecure,  String? domain,  String? path)?  $default,) {final _that = this;
switch (_that) {
case _Cookie() when $default != null:
return $default(_that.name,_that.value,_that.isHttpOnly,_that.isSecure,_that.domain,_that.path);case _:
  return null;

}
}

}

/// @nodoc


class _Cookie implements Cookie {
  const _Cookie({required this.name, required this.value, required this.isHttpOnly, required this.isSecure, this.domain, this.path});
  

@override final  String name;
@override final  String value;
@override final  bool isHttpOnly;
@override final  bool isSecure;
@override final  String? domain;
@override final  String? path;

/// Create a copy of Cookie
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CookieCopyWith<_Cookie> get copyWith => __$CookieCopyWithImpl<_Cookie>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cookie&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value)&&(identical(other.isHttpOnly, isHttpOnly) || other.isHttpOnly == isHttpOnly)&&(identical(other.isSecure, isSecure) || other.isSecure == isSecure)&&(identical(other.domain, domain) || other.domain == domain)&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,name,value,isHttpOnly,isSecure,domain,path);

@override
String toString() {
  return 'Cookie(name: $name, value: $value, isHttpOnly: $isHttpOnly, isSecure: $isSecure, domain: $domain, path: $path)';
}


}

/// @nodoc
abstract mixin class _$CookieCopyWith<$Res> implements $CookieCopyWith<$Res> {
  factory _$CookieCopyWith(_Cookie value, $Res Function(_Cookie) _then) = __$CookieCopyWithImpl;
@override @useResult
$Res call({
 String name, String value, bool isHttpOnly, bool isSecure, String? domain, String? path
});




}
/// @nodoc
class __$CookieCopyWithImpl<$Res>
    implements _$CookieCopyWith<$Res> {
  __$CookieCopyWithImpl(this._self, this._then);

  final _Cookie _self;
  final $Res Function(_Cookie) _then;

/// Create a copy of Cookie
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? value = null,Object? isHttpOnly = null,Object? isSecure = null,Object? domain = freezed,Object? path = freezed,}) {
  return _then(_Cookie(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,isHttpOnly: null == isHttpOnly ? _self.isHttpOnly : isHttpOnly // ignore: cast_nullable_to_non_nullable
as bool,isSecure: null == isSecure ? _self.isSecure : isSecure // ignore: cast_nullable_to_non_nullable
as bool,domain: freezed == domain ? _self.domain : domain // ignore: cast_nullable_to_non_nullable
as String?,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
