// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'max_sdk_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MaxSdkUiState {

 AsyncValue<ApplovinConfiguration>? get configuration;
/// Create a copy of MaxSdkUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaxSdkUiStateCopyWith<MaxSdkUiState> get copyWith => _$MaxSdkUiStateCopyWithImpl<MaxSdkUiState>(this as MaxSdkUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaxSdkUiState&&(identical(other.configuration, configuration) || other.configuration == configuration));
}


@override
int get hashCode => Object.hash(runtimeType,configuration);

@override
String toString() {
  return 'MaxSdkUiState(configuration: $configuration)';
}


}

/// @nodoc
abstract mixin class $MaxSdkUiStateCopyWith<$Res>  {
  factory $MaxSdkUiStateCopyWith(MaxSdkUiState value, $Res Function(MaxSdkUiState) _then) = _$MaxSdkUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<ApplovinConfiguration>? configuration
});




}
/// @nodoc
class _$MaxSdkUiStateCopyWithImpl<$Res>
    implements $MaxSdkUiStateCopyWith<$Res> {
  _$MaxSdkUiStateCopyWithImpl(this._self, this._then);

  final MaxSdkUiState _self;
  final $Res Function(MaxSdkUiState) _then;

/// Create a copy of MaxSdkUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? configuration = freezed,}) {
  return _then(_self.copyWith(
configuration: freezed == configuration ? _self.configuration : configuration // ignore: cast_nullable_to_non_nullable
as AsyncValue<ApplovinConfiguration>?,
  ));
}

}


/// Adds pattern-matching-related methods to [MaxSdkUiState].
extension MaxSdkUiStatePatterns on MaxSdkUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MaxSdkUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MaxSdkUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MaxSdkUiState value)  $default,){
final _that = this;
switch (_that) {
case _MaxSdkUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MaxSdkUiState value)?  $default,){
final _that = this;
switch (_that) {
case _MaxSdkUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<ApplovinConfiguration>? configuration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MaxSdkUiState() when $default != null:
return $default(_that.configuration);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<ApplovinConfiguration>? configuration)  $default,) {final _that = this;
switch (_that) {
case _MaxSdkUiState():
return $default(_that.configuration);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<ApplovinConfiguration>? configuration)?  $default,) {final _that = this;
switch (_that) {
case _MaxSdkUiState() when $default != null:
return $default(_that.configuration);case _:
  return null;

}
}

}

/// @nodoc


class _MaxSdkUiState implements MaxSdkUiState {
  const _MaxSdkUiState({this.configuration});
  

@override final  AsyncValue<ApplovinConfiguration>? configuration;

/// Create a copy of MaxSdkUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaxSdkUiStateCopyWith<_MaxSdkUiState> get copyWith => __$MaxSdkUiStateCopyWithImpl<_MaxSdkUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaxSdkUiState&&(identical(other.configuration, configuration) || other.configuration == configuration));
}


@override
int get hashCode => Object.hash(runtimeType,configuration);

@override
String toString() {
  return 'MaxSdkUiState(configuration: $configuration)';
}


}

/// @nodoc
abstract mixin class _$MaxSdkUiStateCopyWith<$Res> implements $MaxSdkUiStateCopyWith<$Res> {
  factory _$MaxSdkUiStateCopyWith(_MaxSdkUiState value, $Res Function(_MaxSdkUiState) _then) = __$MaxSdkUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<ApplovinConfiguration>? configuration
});




}
/// @nodoc
class __$MaxSdkUiStateCopyWithImpl<$Res>
    implements _$MaxSdkUiStateCopyWith<$Res> {
  __$MaxSdkUiStateCopyWithImpl(this._self, this._then);

  final _MaxSdkUiState _self;
  final $Res Function(_MaxSdkUiState) _then;

/// Create a copy of MaxSdkUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? configuration = freezed,}) {
  return _then(_MaxSdkUiState(
configuration: freezed == configuration ? _self.configuration : configuration // ignore: cast_nullable_to_non_nullable
as AsyncValue<ApplovinConfiguration>?,
  ));
}


}

// dart format on
