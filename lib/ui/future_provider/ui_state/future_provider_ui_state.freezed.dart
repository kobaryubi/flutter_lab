// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'future_provider_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FutureProviderUiState {

 AsyncValue<String>? get formattedGreeting;
/// Create a copy of FutureProviderUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FutureProviderUiStateCopyWith<FutureProviderUiState> get copyWith => _$FutureProviderUiStateCopyWithImpl<FutureProviderUiState>(this as FutureProviderUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FutureProviderUiState&&(identical(other.formattedGreeting, formattedGreeting) || other.formattedGreeting == formattedGreeting));
}


@override
int get hashCode => Object.hash(runtimeType,formattedGreeting);

@override
String toString() {
  return 'FutureProviderUiState(formattedGreeting: $formattedGreeting)';
}


}

/// @nodoc
abstract mixin class $FutureProviderUiStateCopyWith<$Res>  {
  factory $FutureProviderUiStateCopyWith(FutureProviderUiState value, $Res Function(FutureProviderUiState) _then) = _$FutureProviderUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<String>? formattedGreeting
});




}
/// @nodoc
class _$FutureProviderUiStateCopyWithImpl<$Res>
    implements $FutureProviderUiStateCopyWith<$Res> {
  _$FutureProviderUiStateCopyWithImpl(this._self, this._then);

  final FutureProviderUiState _self;
  final $Res Function(FutureProviderUiState) _then;

/// Create a copy of FutureProviderUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? formattedGreeting = freezed,}) {
  return _then(_self.copyWith(
formattedGreeting: freezed == formattedGreeting ? _self.formattedGreeting : formattedGreeting // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [FutureProviderUiState].
extension FutureProviderUiStatePatterns on FutureProviderUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FutureProviderUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FutureProviderUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FutureProviderUiState value)  $default,){
final _that = this;
switch (_that) {
case _FutureProviderUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FutureProviderUiState value)?  $default,){
final _that = this;
switch (_that) {
case _FutureProviderUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<String>? formattedGreeting)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FutureProviderUiState() when $default != null:
return $default(_that.formattedGreeting);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<String>? formattedGreeting)  $default,) {final _that = this;
switch (_that) {
case _FutureProviderUiState():
return $default(_that.formattedGreeting);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<String>? formattedGreeting)?  $default,) {final _that = this;
switch (_that) {
case _FutureProviderUiState() when $default != null:
return $default(_that.formattedGreeting);case _:
  return null;

}
}

}

/// @nodoc


class _FutureProviderUiState implements FutureProviderUiState {
  const _FutureProviderUiState({this.formattedGreeting});
  

@override final  AsyncValue<String>? formattedGreeting;

/// Create a copy of FutureProviderUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FutureProviderUiStateCopyWith<_FutureProviderUiState> get copyWith => __$FutureProviderUiStateCopyWithImpl<_FutureProviderUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FutureProviderUiState&&(identical(other.formattedGreeting, formattedGreeting) || other.formattedGreeting == formattedGreeting));
}


@override
int get hashCode => Object.hash(runtimeType,formattedGreeting);

@override
String toString() {
  return 'FutureProviderUiState(formattedGreeting: $formattedGreeting)';
}


}

/// @nodoc
abstract mixin class _$FutureProviderUiStateCopyWith<$Res> implements $FutureProviderUiStateCopyWith<$Res> {
  factory _$FutureProviderUiStateCopyWith(_FutureProviderUiState value, $Res Function(_FutureProviderUiState) _then) = __$FutureProviderUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<String>? formattedGreeting
});




}
/// @nodoc
class __$FutureProviderUiStateCopyWithImpl<$Res>
    implements _$FutureProviderUiStateCopyWith<$Res> {
  __$FutureProviderUiStateCopyWithImpl(this._self, this._then);

  final _FutureProviderUiState _self;
  final $Res Function(_FutureProviderUiState) _then;

/// Create a copy of FutureProviderUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formattedGreeting = freezed,}) {
  return _then(_FutureProviderUiState(
formattedGreeting: freezed == formattedGreeting ? _self.formattedGreeting : formattedGreeting // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,
  ));
}


}

// dart format on
