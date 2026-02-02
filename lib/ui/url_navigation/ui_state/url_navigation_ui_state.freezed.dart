// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'url_navigation_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UrlNavigationUiState {

 AsyncValue<UrlNavigationList> get urlNavigationList;
/// Create a copy of UrlNavigationUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UrlNavigationUiStateCopyWith<UrlNavigationUiState> get copyWith => _$UrlNavigationUiStateCopyWithImpl<UrlNavigationUiState>(this as UrlNavigationUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UrlNavigationUiState&&(identical(other.urlNavigationList, urlNavigationList) || other.urlNavigationList == urlNavigationList));
}


@override
int get hashCode => Object.hash(runtimeType,urlNavigationList);

@override
String toString() {
  return 'UrlNavigationUiState(urlNavigationList: $urlNavigationList)';
}


}

/// @nodoc
abstract mixin class $UrlNavigationUiStateCopyWith<$Res>  {
  factory $UrlNavigationUiStateCopyWith(UrlNavigationUiState value, $Res Function(UrlNavigationUiState) _then) = _$UrlNavigationUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<UrlNavigationList> urlNavigationList
});




}
/// @nodoc
class _$UrlNavigationUiStateCopyWithImpl<$Res>
    implements $UrlNavigationUiStateCopyWith<$Res> {
  _$UrlNavigationUiStateCopyWithImpl(this._self, this._then);

  final UrlNavigationUiState _self;
  final $Res Function(UrlNavigationUiState) _then;

/// Create a copy of UrlNavigationUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? urlNavigationList = null,}) {
  return _then(_self.copyWith(
urlNavigationList: null == urlNavigationList ? _self.urlNavigationList : urlNavigationList // ignore: cast_nullable_to_non_nullable
as AsyncValue<UrlNavigationList>,
  ));
}

}


/// Adds pattern-matching-related methods to [UrlNavigationUiState].
extension UrlNavigationUiStatePatterns on UrlNavigationUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UrlNavigationUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UrlNavigationUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UrlNavigationUiState value)  $default,){
final _that = this;
switch (_that) {
case _UrlNavigationUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UrlNavigationUiState value)?  $default,){
final _that = this;
switch (_that) {
case _UrlNavigationUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<UrlNavigationList> urlNavigationList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UrlNavigationUiState() when $default != null:
return $default(_that.urlNavigationList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<UrlNavigationList> urlNavigationList)  $default,) {final _that = this;
switch (_that) {
case _UrlNavigationUiState():
return $default(_that.urlNavigationList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<UrlNavigationList> urlNavigationList)?  $default,) {final _that = this;
switch (_that) {
case _UrlNavigationUiState() when $default != null:
return $default(_that.urlNavigationList);case _:
  return null;

}
}

}

/// @nodoc


class _UrlNavigationUiState implements UrlNavigationUiState {
  const _UrlNavigationUiState({required this.urlNavigationList});
  

@override final  AsyncValue<UrlNavigationList> urlNavigationList;

/// Create a copy of UrlNavigationUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UrlNavigationUiStateCopyWith<_UrlNavigationUiState> get copyWith => __$UrlNavigationUiStateCopyWithImpl<_UrlNavigationUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UrlNavigationUiState&&(identical(other.urlNavigationList, urlNavigationList) || other.urlNavigationList == urlNavigationList));
}


@override
int get hashCode => Object.hash(runtimeType,urlNavigationList);

@override
String toString() {
  return 'UrlNavigationUiState(urlNavigationList: $urlNavigationList)';
}


}

/// @nodoc
abstract mixin class _$UrlNavigationUiStateCopyWith<$Res> implements $UrlNavigationUiStateCopyWith<$Res> {
  factory _$UrlNavigationUiStateCopyWith(_UrlNavigationUiState value, $Res Function(_UrlNavigationUiState) _then) = __$UrlNavigationUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<UrlNavigationList> urlNavigationList
});




}
/// @nodoc
class __$UrlNavigationUiStateCopyWithImpl<$Res>
    implements _$UrlNavigationUiStateCopyWith<$Res> {
  __$UrlNavigationUiStateCopyWithImpl(this._self, this._then);

  final _UrlNavigationUiState _self;
  final $Res Function(_UrlNavigationUiState) _then;

/// Create a copy of UrlNavigationUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? urlNavigationList = null,}) {
  return _then(_UrlNavigationUiState(
urlNavigationList: null == urlNavigationList ? _self.urlNavigationList : urlNavigationList // ignore: cast_nullable_to_non_nullable
as AsyncValue<UrlNavigationList>,
  ));
}


}

// dart format on
