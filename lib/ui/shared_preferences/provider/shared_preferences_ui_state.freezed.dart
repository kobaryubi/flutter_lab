// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shared_preferences_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SharedPreferencesUiState {

 AsyncValue<DateTime>? get latestAgreedDate;
/// Create a copy of SharedPreferencesUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SharedPreferencesUiStateCopyWith<SharedPreferencesUiState> get copyWith => _$SharedPreferencesUiStateCopyWithImpl<SharedPreferencesUiState>(this as SharedPreferencesUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SharedPreferencesUiState&&(identical(other.latestAgreedDate, latestAgreedDate) || other.latestAgreedDate == latestAgreedDate));
}


@override
int get hashCode => Object.hash(runtimeType,latestAgreedDate);

@override
String toString() {
  return 'SharedPreferencesUiState(latestAgreedDate: $latestAgreedDate)';
}


}

/// @nodoc
abstract mixin class $SharedPreferencesUiStateCopyWith<$Res>  {
  factory $SharedPreferencesUiStateCopyWith(SharedPreferencesUiState value, $Res Function(SharedPreferencesUiState) _then) = _$SharedPreferencesUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<DateTime>? latestAgreedDate
});




}
/// @nodoc
class _$SharedPreferencesUiStateCopyWithImpl<$Res>
    implements $SharedPreferencesUiStateCopyWith<$Res> {
  _$SharedPreferencesUiStateCopyWithImpl(this._self, this._then);

  final SharedPreferencesUiState _self;
  final $Res Function(SharedPreferencesUiState) _then;

/// Create a copy of SharedPreferencesUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latestAgreedDate = freezed,}) {
  return _then(_self.copyWith(
latestAgreedDate: freezed == latestAgreedDate ? _self.latestAgreedDate : latestAgreedDate // ignore: cast_nullable_to_non_nullable
as AsyncValue<DateTime>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SharedPreferencesUiState].
extension SharedPreferencesUiStatePatterns on SharedPreferencesUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SharedPreferencesUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SharedPreferencesUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SharedPreferencesUiState value)  $default,){
final _that = this;
switch (_that) {
case _SharedPreferencesUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SharedPreferencesUiState value)?  $default,){
final _that = this;
switch (_that) {
case _SharedPreferencesUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<DateTime>? latestAgreedDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SharedPreferencesUiState() when $default != null:
return $default(_that.latestAgreedDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<DateTime>? latestAgreedDate)  $default,) {final _that = this;
switch (_that) {
case _SharedPreferencesUiState():
return $default(_that.latestAgreedDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<DateTime>? latestAgreedDate)?  $default,) {final _that = this;
switch (_that) {
case _SharedPreferencesUiState() when $default != null:
return $default(_that.latestAgreedDate);case _:
  return null;

}
}

}

/// @nodoc


class _SharedPreferencesUiState implements SharedPreferencesUiState {
  const _SharedPreferencesUiState({required this.latestAgreedDate});
  

@override final  AsyncValue<DateTime>? latestAgreedDate;

/// Create a copy of SharedPreferencesUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SharedPreferencesUiStateCopyWith<_SharedPreferencesUiState> get copyWith => __$SharedPreferencesUiStateCopyWithImpl<_SharedPreferencesUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SharedPreferencesUiState&&(identical(other.latestAgreedDate, latestAgreedDate) || other.latestAgreedDate == latestAgreedDate));
}


@override
int get hashCode => Object.hash(runtimeType,latestAgreedDate);

@override
String toString() {
  return 'SharedPreferencesUiState(latestAgreedDate: $latestAgreedDate)';
}


}

/// @nodoc
abstract mixin class _$SharedPreferencesUiStateCopyWith<$Res> implements $SharedPreferencesUiStateCopyWith<$Res> {
  factory _$SharedPreferencesUiStateCopyWith(_SharedPreferencesUiState value, $Res Function(_SharedPreferencesUiState) _then) = __$SharedPreferencesUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<DateTime>? latestAgreedDate
});




}
/// @nodoc
class __$SharedPreferencesUiStateCopyWithImpl<$Res>
    implements _$SharedPreferencesUiStateCopyWith<$Res> {
  __$SharedPreferencesUiStateCopyWithImpl(this._self, this._then);

  final _SharedPreferencesUiState _self;
  final $Res Function(_SharedPreferencesUiState) _then;

/// Create a copy of SharedPreferencesUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latestAgreedDate = freezed,}) {
  return _then(_SharedPreferencesUiState(
latestAgreedDate: freezed == latestAgreedDate ? _self.latestAgreedDate : latestAgreedDate // ignore: cast_nullable_to_non_nullable
as AsyncValue<DateTime>?,
  ));
}


}

// dart format on
