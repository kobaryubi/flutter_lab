// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loading_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoadingUiState {

 AsyncValue<String>? get data;
/// Create a copy of LoadingUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadingUiStateCopyWith<LoadingUiState> get copyWith => _$LoadingUiStateCopyWithImpl<LoadingUiState>(this as LoadingUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingUiState&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'LoadingUiState(data: $data)';
}


}

/// @nodoc
abstract mixin class $LoadingUiStateCopyWith<$Res>  {
  factory $LoadingUiStateCopyWith(LoadingUiState value, $Res Function(LoadingUiState) _then) = _$LoadingUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<String>? data
});




}
/// @nodoc
class _$LoadingUiStateCopyWithImpl<$Res>
    implements $LoadingUiStateCopyWith<$Res> {
  _$LoadingUiStateCopyWithImpl(this._self, this._then);

  final LoadingUiState _self;
  final $Res Function(LoadingUiState) _then;

/// Create a copy of LoadingUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [LoadingUiState].
extension LoadingUiStatePatterns on LoadingUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoadingUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadingUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoadingUiState value)  $default,){
final _that = this;
switch (_that) {
case _LoadingUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoadingUiState value)?  $default,){
final _that = this;
switch (_that) {
case _LoadingUiState() when $default != null:
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
case _LoadingUiState() when $default != null:
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
case _LoadingUiState():
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
case _LoadingUiState() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class _LoadingUiState implements LoadingUiState {
  const _LoadingUiState({this.data});
  

@override final  AsyncValue<String>? data;

/// Create a copy of LoadingUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadingUiStateCopyWith<_LoadingUiState> get copyWith => __$LoadingUiStateCopyWithImpl<_LoadingUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingUiState&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'LoadingUiState(data: $data)';
}


}

/// @nodoc
abstract mixin class _$LoadingUiStateCopyWith<$Res> implements $LoadingUiStateCopyWith<$Res> {
  factory _$LoadingUiStateCopyWith(_LoadingUiState value, $Res Function(_LoadingUiState) _then) = __$LoadingUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<String>? data
});




}
/// @nodoc
class __$LoadingUiStateCopyWithImpl<$Res>
    implements _$LoadingUiStateCopyWith<$Res> {
  __$LoadingUiStateCopyWithImpl(this._self, this._then);

  final _LoadingUiState _self;
  final $Res Function(_LoadingUiState) _then;

/// Create a copy of LoadingUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_LoadingUiState(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,
  ));
}


}

// dart format on
