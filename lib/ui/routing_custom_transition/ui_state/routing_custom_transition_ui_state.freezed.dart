// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routing_custom_transition_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RoutingCustomTransitionUiState {

 AsyncValue<String>? get data;
/// Create a copy of RoutingCustomTransitionUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoutingCustomTransitionUiStateCopyWith<RoutingCustomTransitionUiState> get copyWith => _$RoutingCustomTransitionUiStateCopyWithImpl<RoutingCustomTransitionUiState>(this as RoutingCustomTransitionUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoutingCustomTransitionUiState&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'RoutingCustomTransitionUiState(data: $data)';
}


}

/// @nodoc
abstract mixin class $RoutingCustomTransitionUiStateCopyWith<$Res>  {
  factory $RoutingCustomTransitionUiStateCopyWith(RoutingCustomTransitionUiState value, $Res Function(RoutingCustomTransitionUiState) _then) = _$RoutingCustomTransitionUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<String>? data
});




}
/// @nodoc
class _$RoutingCustomTransitionUiStateCopyWithImpl<$Res>
    implements $RoutingCustomTransitionUiStateCopyWith<$Res> {
  _$RoutingCustomTransitionUiStateCopyWithImpl(this._self, this._then);

  final RoutingCustomTransitionUiState _self;
  final $Res Function(RoutingCustomTransitionUiState) _then;

/// Create a copy of RoutingCustomTransitionUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [RoutingCustomTransitionUiState].
extension RoutingCustomTransitionUiStatePatterns on RoutingCustomTransitionUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoutingCustomTransitionUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoutingCustomTransitionUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoutingCustomTransitionUiState value)  $default,){
final _that = this;
switch (_that) {
case _RoutingCustomTransitionUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoutingCustomTransitionUiState value)?  $default,){
final _that = this;
switch (_that) {
case _RoutingCustomTransitionUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<String>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoutingCustomTransitionUiState() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<String>? data)  $default,) {final _that = this;
switch (_that) {
case _RoutingCustomTransitionUiState():
return $default(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<String>? data)?  $default,) {final _that = this;
switch (_that) {
case _RoutingCustomTransitionUiState() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class _RoutingCustomTransitionUiState implements RoutingCustomTransitionUiState {
  const _RoutingCustomTransitionUiState({this.data});
  

@override final  AsyncValue<String>? data;

/// Create a copy of RoutingCustomTransitionUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoutingCustomTransitionUiStateCopyWith<_RoutingCustomTransitionUiState> get copyWith => __$RoutingCustomTransitionUiStateCopyWithImpl<_RoutingCustomTransitionUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoutingCustomTransitionUiState&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'RoutingCustomTransitionUiState(data: $data)';
}


}

/// @nodoc
abstract mixin class _$RoutingCustomTransitionUiStateCopyWith<$Res> implements $RoutingCustomTransitionUiStateCopyWith<$Res> {
  factory _$RoutingCustomTransitionUiStateCopyWith(_RoutingCustomTransitionUiState value, $Res Function(_RoutingCustomTransitionUiState) _then) = __$RoutingCustomTransitionUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<String>? data
});




}
/// @nodoc
class __$RoutingCustomTransitionUiStateCopyWithImpl<$Res>
    implements _$RoutingCustomTransitionUiStateCopyWith<$Res> {
  __$RoutingCustomTransitionUiStateCopyWithImpl(this._self, this._then);

  final _RoutingCustomTransitionUiState _self;
  final $Res Function(_RoutingCustomTransitionUiState) _then;

/// Create a copy of RoutingCustomTransitionUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_RoutingCustomTransitionUiState(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,
  ));
}


}

// dart format on
