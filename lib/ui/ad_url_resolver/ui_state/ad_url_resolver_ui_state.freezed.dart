// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ad_url_resolver_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdUrlResolverUiState {

 AsyncValue<Uri>? get resolvedUrl;
/// Create a copy of AdUrlResolverUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdUrlResolverUiStateCopyWith<AdUrlResolverUiState> get copyWith => _$AdUrlResolverUiStateCopyWithImpl<AdUrlResolverUiState>(this as AdUrlResolverUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdUrlResolverUiState&&(identical(other.resolvedUrl, resolvedUrl) || other.resolvedUrl == resolvedUrl));
}


@override
int get hashCode => Object.hash(runtimeType,resolvedUrl);

@override
String toString() {
  return 'AdUrlResolverUiState(resolvedUrl: $resolvedUrl)';
}


}

/// @nodoc
abstract mixin class $AdUrlResolverUiStateCopyWith<$Res>  {
  factory $AdUrlResolverUiStateCopyWith(AdUrlResolverUiState value, $Res Function(AdUrlResolverUiState) _then) = _$AdUrlResolverUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<Uri>? resolvedUrl
});




}
/// @nodoc
class _$AdUrlResolverUiStateCopyWithImpl<$Res>
    implements $AdUrlResolverUiStateCopyWith<$Res> {
  _$AdUrlResolverUiStateCopyWithImpl(this._self, this._then);

  final AdUrlResolverUiState _self;
  final $Res Function(AdUrlResolverUiState) _then;

/// Create a copy of AdUrlResolverUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? resolvedUrl = freezed,}) {
  return _then(_self.copyWith(
resolvedUrl: freezed == resolvedUrl ? _self.resolvedUrl : resolvedUrl // ignore: cast_nullable_to_non_nullable
as AsyncValue<Uri>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdUrlResolverUiState].
extension AdUrlResolverUiStatePatterns on AdUrlResolverUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdUrlResolverUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdUrlResolverUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdUrlResolverUiState value)  $default,){
final _that = this;
switch (_that) {
case _AdUrlResolverUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdUrlResolverUiState value)?  $default,){
final _that = this;
switch (_that) {
case _AdUrlResolverUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<Uri>? resolvedUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdUrlResolverUiState() when $default != null:
return $default(_that.resolvedUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<Uri>? resolvedUrl)  $default,) {final _that = this;
switch (_that) {
case _AdUrlResolverUiState():
return $default(_that.resolvedUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<Uri>? resolvedUrl)?  $default,) {final _that = this;
switch (_that) {
case _AdUrlResolverUiState() when $default != null:
return $default(_that.resolvedUrl);case _:
  return null;

}
}

}

/// @nodoc


class _AdUrlResolverUiState implements AdUrlResolverUiState {
  const _AdUrlResolverUiState({this.resolvedUrl});
  

@override final  AsyncValue<Uri>? resolvedUrl;

/// Create a copy of AdUrlResolverUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdUrlResolverUiStateCopyWith<_AdUrlResolverUiState> get copyWith => __$AdUrlResolverUiStateCopyWithImpl<_AdUrlResolverUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdUrlResolverUiState&&(identical(other.resolvedUrl, resolvedUrl) || other.resolvedUrl == resolvedUrl));
}


@override
int get hashCode => Object.hash(runtimeType,resolvedUrl);

@override
String toString() {
  return 'AdUrlResolverUiState(resolvedUrl: $resolvedUrl)';
}


}

/// @nodoc
abstract mixin class _$AdUrlResolverUiStateCopyWith<$Res> implements $AdUrlResolverUiStateCopyWith<$Res> {
  factory _$AdUrlResolverUiStateCopyWith(_AdUrlResolverUiState value, $Res Function(_AdUrlResolverUiState) _then) = __$AdUrlResolverUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<Uri>? resolvedUrl
});




}
/// @nodoc
class __$AdUrlResolverUiStateCopyWithImpl<$Res>
    implements _$AdUrlResolverUiStateCopyWith<$Res> {
  __$AdUrlResolverUiStateCopyWithImpl(this._self, this._then);

  final _AdUrlResolverUiState _self;
  final $Res Function(_AdUrlResolverUiState) _then;

/// Create a copy of AdUrlResolverUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? resolvedUrl = freezed,}) {
  return _then(_AdUrlResolverUiState(
resolvedUrl: freezed == resolvedUrl ? _self.resolvedUrl : resolvedUrl // ignore: cast_nullable_to_non_nullable
as AsyncValue<Uri>?,
  ));
}


}

// dart format on
