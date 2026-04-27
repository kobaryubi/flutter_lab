// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loading_submit_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoadingSubmitUiState {

 AsyncValue<String>? get data; AsyncValue<void>? get submit;
/// Create a copy of LoadingSubmitUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadingSubmitUiStateCopyWith<LoadingSubmitUiState> get copyWith => _$LoadingSubmitUiStateCopyWithImpl<LoadingSubmitUiState>(this as LoadingSubmitUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingSubmitUiState&&(identical(other.data, data) || other.data == data)&&(identical(other.submit, submit) || other.submit == submit));
}


@override
int get hashCode => Object.hash(runtimeType,data,submit);

@override
String toString() {
  return 'LoadingSubmitUiState(data: $data, submit: $submit)';
}


}

/// @nodoc
abstract mixin class $LoadingSubmitUiStateCopyWith<$Res>  {
  factory $LoadingSubmitUiStateCopyWith(LoadingSubmitUiState value, $Res Function(LoadingSubmitUiState) _then) = _$LoadingSubmitUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<String>? data, AsyncValue<void>? submit
});




}
/// @nodoc
class _$LoadingSubmitUiStateCopyWithImpl<$Res>
    implements $LoadingSubmitUiStateCopyWith<$Res> {
  _$LoadingSubmitUiStateCopyWithImpl(this._self, this._then);

  final LoadingSubmitUiState _self;
  final $Res Function(LoadingSubmitUiState) _then;

/// Create a copy of LoadingSubmitUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? submit = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,submit: freezed == submit ? _self.submit : submit // ignore: cast_nullable_to_non_nullable
as AsyncValue<void>?,
  ));
}

}


/// Adds pattern-matching-related methods to [LoadingSubmitUiState].
extension LoadingSubmitUiStatePatterns on LoadingSubmitUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoadingSubmitUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadingSubmitUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoadingSubmitUiState value)  $default,){
final _that = this;
switch (_that) {
case _LoadingSubmitUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoadingSubmitUiState value)?  $default,){
final _that = this;
switch (_that) {
case _LoadingSubmitUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<String>? data,  AsyncValue<void>? submit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadingSubmitUiState() when $default != null:
return $default(_that.data,_that.submit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<String>? data,  AsyncValue<void>? submit)  $default,) {final _that = this;
switch (_that) {
case _LoadingSubmitUiState():
return $default(_that.data,_that.submit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<String>? data,  AsyncValue<void>? submit)?  $default,) {final _that = this;
switch (_that) {
case _LoadingSubmitUiState() when $default != null:
return $default(_that.data,_that.submit);case _:
  return null;

}
}

}

/// @nodoc


class _LoadingSubmitUiState implements LoadingSubmitUiState {
  const _LoadingSubmitUiState({this.data, this.submit});
  

@override final  AsyncValue<String>? data;
@override final  AsyncValue<void>? submit;

/// Create a copy of LoadingSubmitUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadingSubmitUiStateCopyWith<_LoadingSubmitUiState> get copyWith => __$LoadingSubmitUiStateCopyWithImpl<_LoadingSubmitUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingSubmitUiState&&(identical(other.data, data) || other.data == data)&&(identical(other.submit, submit) || other.submit == submit));
}


@override
int get hashCode => Object.hash(runtimeType,data,submit);

@override
String toString() {
  return 'LoadingSubmitUiState(data: $data, submit: $submit)';
}


}

/// @nodoc
abstract mixin class _$LoadingSubmitUiStateCopyWith<$Res> implements $LoadingSubmitUiStateCopyWith<$Res> {
  factory _$LoadingSubmitUiStateCopyWith(_LoadingSubmitUiState value, $Res Function(_LoadingSubmitUiState) _then) = __$LoadingSubmitUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<String>? data, AsyncValue<void>? submit
});




}
/// @nodoc
class __$LoadingSubmitUiStateCopyWithImpl<$Res>
    implements _$LoadingSubmitUiStateCopyWith<$Res> {
  __$LoadingSubmitUiStateCopyWithImpl(this._self, this._then);

  final _LoadingSubmitUiState _self;
  final $Res Function(_LoadingSubmitUiState) _then;

/// Create a copy of LoadingSubmitUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? submit = freezed,}) {
  return _then(_LoadingSubmitUiState(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,submit: freezed == submit ? _self.submit : submit // ignore: cast_nullable_to_non_nullable
as AsyncValue<void>?,
  ));
}


}

// dart format on
