// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adjust_deferred_deeplink_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdjustDeferredDeeplinkUiState {

 String? get pendingDeeplink;
/// Create a copy of AdjustDeferredDeeplinkUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdjustDeferredDeeplinkUiStateCopyWith<AdjustDeferredDeeplinkUiState> get copyWith => _$AdjustDeferredDeeplinkUiStateCopyWithImpl<AdjustDeferredDeeplinkUiState>(this as AdjustDeferredDeeplinkUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdjustDeferredDeeplinkUiState&&(identical(other.pendingDeeplink, pendingDeeplink) || other.pendingDeeplink == pendingDeeplink));
}


@override
int get hashCode => Object.hash(runtimeType,pendingDeeplink);

@override
String toString() {
  return 'AdjustDeferredDeeplinkUiState(pendingDeeplink: $pendingDeeplink)';
}


}

/// @nodoc
abstract mixin class $AdjustDeferredDeeplinkUiStateCopyWith<$Res>  {
  factory $AdjustDeferredDeeplinkUiStateCopyWith(AdjustDeferredDeeplinkUiState value, $Res Function(AdjustDeferredDeeplinkUiState) _then) = _$AdjustDeferredDeeplinkUiStateCopyWithImpl;
@useResult
$Res call({
 String? pendingDeeplink
});




}
/// @nodoc
class _$AdjustDeferredDeeplinkUiStateCopyWithImpl<$Res>
    implements $AdjustDeferredDeeplinkUiStateCopyWith<$Res> {
  _$AdjustDeferredDeeplinkUiStateCopyWithImpl(this._self, this._then);

  final AdjustDeferredDeeplinkUiState _self;
  final $Res Function(AdjustDeferredDeeplinkUiState) _then;

/// Create a copy of AdjustDeferredDeeplinkUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pendingDeeplink = freezed,}) {
  return _then(_self.copyWith(
pendingDeeplink: freezed == pendingDeeplink ? _self.pendingDeeplink : pendingDeeplink // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdjustDeferredDeeplinkUiState].
extension AdjustDeferredDeeplinkUiStatePatterns on AdjustDeferredDeeplinkUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdjustDeferredDeeplinkUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdjustDeferredDeeplinkUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdjustDeferredDeeplinkUiState value)  $default,){
final _that = this;
switch (_that) {
case _AdjustDeferredDeeplinkUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdjustDeferredDeeplinkUiState value)?  $default,){
final _that = this;
switch (_that) {
case _AdjustDeferredDeeplinkUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? pendingDeeplink)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdjustDeferredDeeplinkUiState() when $default != null:
return $default(_that.pendingDeeplink);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? pendingDeeplink)  $default,) {final _that = this;
switch (_that) {
case _AdjustDeferredDeeplinkUiState():
return $default(_that.pendingDeeplink);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? pendingDeeplink)?  $default,) {final _that = this;
switch (_that) {
case _AdjustDeferredDeeplinkUiState() when $default != null:
return $default(_that.pendingDeeplink);case _:
  return null;

}
}

}

/// @nodoc


class _AdjustDeferredDeeplinkUiState implements AdjustDeferredDeeplinkUiState {
  const _AdjustDeferredDeeplinkUiState({required this.pendingDeeplink});
  

@override final  String? pendingDeeplink;

/// Create a copy of AdjustDeferredDeeplinkUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdjustDeferredDeeplinkUiStateCopyWith<_AdjustDeferredDeeplinkUiState> get copyWith => __$AdjustDeferredDeeplinkUiStateCopyWithImpl<_AdjustDeferredDeeplinkUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdjustDeferredDeeplinkUiState&&(identical(other.pendingDeeplink, pendingDeeplink) || other.pendingDeeplink == pendingDeeplink));
}


@override
int get hashCode => Object.hash(runtimeType,pendingDeeplink);

@override
String toString() {
  return 'AdjustDeferredDeeplinkUiState(pendingDeeplink: $pendingDeeplink)';
}


}

/// @nodoc
abstract mixin class _$AdjustDeferredDeeplinkUiStateCopyWith<$Res> implements $AdjustDeferredDeeplinkUiStateCopyWith<$Res> {
  factory _$AdjustDeferredDeeplinkUiStateCopyWith(_AdjustDeferredDeeplinkUiState value, $Res Function(_AdjustDeferredDeeplinkUiState) _then) = __$AdjustDeferredDeeplinkUiStateCopyWithImpl;
@override @useResult
$Res call({
 String? pendingDeeplink
});




}
/// @nodoc
class __$AdjustDeferredDeeplinkUiStateCopyWithImpl<$Res>
    implements _$AdjustDeferredDeeplinkUiStateCopyWith<$Res> {
  __$AdjustDeferredDeeplinkUiStateCopyWithImpl(this._self, this._then);

  final _AdjustDeferredDeeplinkUiState _self;
  final $Res Function(_AdjustDeferredDeeplinkUiState) _then;

/// Create a copy of AdjustDeferredDeeplinkUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pendingDeeplink = freezed,}) {
  return _then(_AdjustDeferredDeeplinkUiState(
pendingDeeplink: freezed == pendingDeeplink ? _self.pendingDeeplink : pendingDeeplink // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
