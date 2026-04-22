// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'debug_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DebugUiState {

/// Entries read from SharedPreferences, keyed by declared key.
 AsyncValue<Map<String, Object>>? get localEntries;/// Entries read from FlutterSecureStorage, keyed by declared key.
 AsyncValue<Map<String, String>>? get secureEntries;
/// Create a copy of DebugUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DebugUiStateCopyWith<DebugUiState> get copyWith => _$DebugUiStateCopyWithImpl<DebugUiState>(this as DebugUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DebugUiState&&(identical(other.localEntries, localEntries) || other.localEntries == localEntries)&&(identical(other.secureEntries, secureEntries) || other.secureEntries == secureEntries));
}


@override
int get hashCode => Object.hash(runtimeType,localEntries,secureEntries);

@override
String toString() {
  return 'DebugUiState(localEntries: $localEntries, secureEntries: $secureEntries)';
}


}

/// @nodoc
abstract mixin class $DebugUiStateCopyWith<$Res>  {
  factory $DebugUiStateCopyWith(DebugUiState value, $Res Function(DebugUiState) _then) = _$DebugUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<Map<String, Object>>? localEntries, AsyncValue<Map<String, String>>? secureEntries
});




}
/// @nodoc
class _$DebugUiStateCopyWithImpl<$Res>
    implements $DebugUiStateCopyWith<$Res> {
  _$DebugUiStateCopyWithImpl(this._self, this._then);

  final DebugUiState _self;
  final $Res Function(DebugUiState) _then;

/// Create a copy of DebugUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? localEntries = freezed,Object? secureEntries = freezed,}) {
  return _then(_self.copyWith(
localEntries: freezed == localEntries ? _self.localEntries : localEntries // ignore: cast_nullable_to_non_nullable
as AsyncValue<Map<String, Object>>?,secureEntries: freezed == secureEntries ? _self.secureEntries : secureEntries // ignore: cast_nullable_to_non_nullable
as AsyncValue<Map<String, String>>?,
  ));
}

}


/// Adds pattern-matching-related methods to [DebugUiState].
extension DebugUiStatePatterns on DebugUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DebugUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DebugUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DebugUiState value)  $default,){
final _that = this;
switch (_that) {
case _DebugUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DebugUiState value)?  $default,){
final _that = this;
switch (_that) {
case _DebugUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<Map<String, Object>>? localEntries,  AsyncValue<Map<String, String>>? secureEntries)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DebugUiState() when $default != null:
return $default(_that.localEntries,_that.secureEntries);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<Map<String, Object>>? localEntries,  AsyncValue<Map<String, String>>? secureEntries)  $default,) {final _that = this;
switch (_that) {
case _DebugUiState():
return $default(_that.localEntries,_that.secureEntries);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<Map<String, Object>>? localEntries,  AsyncValue<Map<String, String>>? secureEntries)?  $default,) {final _that = this;
switch (_that) {
case _DebugUiState() when $default != null:
return $default(_that.localEntries,_that.secureEntries);case _:
  return null;

}
}

}

/// @nodoc


class _DebugUiState implements DebugUiState {
  const _DebugUiState({this.localEntries, this.secureEntries});
  

/// Entries read from SharedPreferences, keyed by declared key.
@override final  AsyncValue<Map<String, Object>>? localEntries;
/// Entries read from FlutterSecureStorage, keyed by declared key.
@override final  AsyncValue<Map<String, String>>? secureEntries;

/// Create a copy of DebugUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DebugUiStateCopyWith<_DebugUiState> get copyWith => __$DebugUiStateCopyWithImpl<_DebugUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DebugUiState&&(identical(other.localEntries, localEntries) || other.localEntries == localEntries)&&(identical(other.secureEntries, secureEntries) || other.secureEntries == secureEntries));
}


@override
int get hashCode => Object.hash(runtimeType,localEntries,secureEntries);

@override
String toString() {
  return 'DebugUiState(localEntries: $localEntries, secureEntries: $secureEntries)';
}


}

/// @nodoc
abstract mixin class _$DebugUiStateCopyWith<$Res> implements $DebugUiStateCopyWith<$Res> {
  factory _$DebugUiStateCopyWith(_DebugUiState value, $Res Function(_DebugUiState) _then) = __$DebugUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<Map<String, Object>>? localEntries, AsyncValue<Map<String, String>>? secureEntries
});




}
/// @nodoc
class __$DebugUiStateCopyWithImpl<$Res>
    implements _$DebugUiStateCopyWith<$Res> {
  __$DebugUiStateCopyWithImpl(this._self, this._then);

  final _DebugUiState _self;
  final $Res Function(_DebugUiState) _then;

/// Create a copy of DebugUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? localEntries = freezed,Object? secureEntries = freezed,}) {
  return _then(_DebugUiState(
localEntries: freezed == localEntries ? _self.localEntries : localEntries // ignore: cast_nullable_to_non_nullable
as AsyncValue<Map<String, Object>>?,secureEntries: freezed == secureEntries ? _self.secureEntries : secureEntries // ignore: cast_nullable_to_non_nullable
as AsyncValue<Map<String, String>>?,
  ));
}


}

// dart format on
