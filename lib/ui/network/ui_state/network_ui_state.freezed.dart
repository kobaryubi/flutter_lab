// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NetworkUiState {

 AsyncValue<ConnectivityStatus>? get status;
/// Create a copy of NetworkUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkUiStateCopyWith<NetworkUiState> get copyWith => _$NetworkUiStateCopyWithImpl<NetworkUiState>(this as NetworkUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkUiState&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'NetworkUiState(status: $status)';
}


}

/// @nodoc
abstract mixin class $NetworkUiStateCopyWith<$Res>  {
  factory $NetworkUiStateCopyWith(NetworkUiState value, $Res Function(NetworkUiState) _then) = _$NetworkUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<ConnectivityStatus>? status
});




}
/// @nodoc
class _$NetworkUiStateCopyWithImpl<$Res>
    implements $NetworkUiStateCopyWith<$Res> {
  _$NetworkUiStateCopyWithImpl(this._self, this._then);

  final NetworkUiState _self;
  final $Res Function(NetworkUiState) _then;

/// Create a copy of NetworkUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AsyncValue<ConnectivityStatus>?,
  ));
}

}


/// Adds pattern-matching-related methods to [NetworkUiState].
extension NetworkUiStatePatterns on NetworkUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NetworkUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NetworkUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NetworkUiState value)  $default,){
final _that = this;
switch (_that) {
case _NetworkUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NetworkUiState value)?  $default,){
final _that = this;
switch (_that) {
case _NetworkUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<ConnectivityStatus>? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NetworkUiState() when $default != null:
return $default(_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<ConnectivityStatus>? status)  $default,) {final _that = this;
switch (_that) {
case _NetworkUiState():
return $default(_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<ConnectivityStatus>? status)?  $default,) {final _that = this;
switch (_that) {
case _NetworkUiState() when $default != null:
return $default(_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _NetworkUiState implements NetworkUiState {
  const _NetworkUiState({this.status});
  

@override final  AsyncValue<ConnectivityStatus>? status;

/// Create a copy of NetworkUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NetworkUiStateCopyWith<_NetworkUiState> get copyWith => __$NetworkUiStateCopyWithImpl<_NetworkUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkUiState&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'NetworkUiState(status: $status)';
}


}

/// @nodoc
abstract mixin class _$NetworkUiStateCopyWith<$Res> implements $NetworkUiStateCopyWith<$Res> {
  factory _$NetworkUiStateCopyWith(_NetworkUiState value, $Res Function(_NetworkUiState) _then) = __$NetworkUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<ConnectivityStatus>? status
});




}
/// @nodoc
class __$NetworkUiStateCopyWithImpl<$Res>
    implements _$NetworkUiStateCopyWith<$Res> {
  __$NetworkUiStateCopyWithImpl(this._self, this._then);

  final _NetworkUiState _self;
  final $Res Function(_NetworkUiState) _then;

/// Create a copy of NetworkUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,}) {
  return _then(_NetworkUiState(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AsyncValue<ConnectivityStatus>?,
  ));
}


}

// dart format on
