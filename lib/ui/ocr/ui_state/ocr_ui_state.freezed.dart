// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ocr_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OcrUiState {

 AsyncValue<String>? get recognizedText;
/// Create a copy of OcrUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OcrUiStateCopyWith<OcrUiState> get copyWith => _$OcrUiStateCopyWithImpl<OcrUiState>(this as OcrUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OcrUiState&&(identical(other.recognizedText, recognizedText) || other.recognizedText == recognizedText));
}


@override
int get hashCode => Object.hash(runtimeType,recognizedText);

@override
String toString() {
  return 'OcrUiState(recognizedText: $recognizedText)';
}


}

/// @nodoc
abstract mixin class $OcrUiStateCopyWith<$Res>  {
  factory $OcrUiStateCopyWith(OcrUiState value, $Res Function(OcrUiState) _then) = _$OcrUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<String>? recognizedText
});




}
/// @nodoc
class _$OcrUiStateCopyWithImpl<$Res>
    implements $OcrUiStateCopyWith<$Res> {
  _$OcrUiStateCopyWithImpl(this._self, this._then);

  final OcrUiState _self;
  final $Res Function(OcrUiState) _then;

/// Create a copy of OcrUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recognizedText = freezed,}) {
  return _then(_self.copyWith(
recognizedText: freezed == recognizedText ? _self.recognizedText : recognizedText // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [OcrUiState].
extension OcrUiStatePatterns on OcrUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OcrUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OcrUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OcrUiState value)  $default,){
final _that = this;
switch (_that) {
case _OcrUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OcrUiState value)?  $default,){
final _that = this;
switch (_that) {
case _OcrUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<String>? recognizedText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OcrUiState() when $default != null:
return $default(_that.recognizedText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<String>? recognizedText)  $default,) {final _that = this;
switch (_that) {
case _OcrUiState():
return $default(_that.recognizedText);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<String>? recognizedText)?  $default,) {final _that = this;
switch (_that) {
case _OcrUiState() when $default != null:
return $default(_that.recognizedText);case _:
  return null;

}
}

}

/// @nodoc


class _OcrUiState implements OcrUiState {
  const _OcrUiState({this.recognizedText});
  

@override final  AsyncValue<String>? recognizedText;

/// Create a copy of OcrUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OcrUiStateCopyWith<_OcrUiState> get copyWith => __$OcrUiStateCopyWithImpl<_OcrUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OcrUiState&&(identical(other.recognizedText, recognizedText) || other.recognizedText == recognizedText));
}


@override
int get hashCode => Object.hash(runtimeType,recognizedText);

@override
String toString() {
  return 'OcrUiState(recognizedText: $recognizedText)';
}


}

/// @nodoc
abstract mixin class _$OcrUiStateCopyWith<$Res> implements $OcrUiStateCopyWith<$Res> {
  factory _$OcrUiStateCopyWith(_OcrUiState value, $Res Function(_OcrUiState) _then) = __$OcrUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<String>? recognizedText
});




}
/// @nodoc
class __$OcrUiStateCopyWithImpl<$Res>
    implements _$OcrUiStateCopyWith<$Res> {
  __$OcrUiStateCopyWithImpl(this._self, this._then);

  final _OcrUiState _self;
  final $Res Function(_OcrUiState) _then;

/// Create a copy of OcrUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recognizedText = freezed,}) {
  return _then(_OcrUiState(
recognizedText: freezed == recognizedText ? _self.recognizedText : recognizedText // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,
  ));
}


}

// dart format on
