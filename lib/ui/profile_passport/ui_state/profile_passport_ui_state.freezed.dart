// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_passport_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfilePassportUiState {

/// Result of starting the PPSDK service.
 AsyncValue<Unit>? get startService;
/// Create a copy of ProfilePassportUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfilePassportUiStateCopyWith<ProfilePassportUiState> get copyWith => _$ProfilePassportUiStateCopyWithImpl<ProfilePassportUiState>(this as ProfilePassportUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfilePassportUiState&&(identical(other.startService, startService) || other.startService == startService));
}


@override
int get hashCode => Object.hash(runtimeType,startService);

@override
String toString() {
  return 'ProfilePassportUiState(startService: $startService)';
}


}

/// @nodoc
abstract mixin class $ProfilePassportUiStateCopyWith<$Res>  {
  factory $ProfilePassportUiStateCopyWith(ProfilePassportUiState value, $Res Function(ProfilePassportUiState) _then) = _$ProfilePassportUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<Unit>? startService
});




}
/// @nodoc
class _$ProfilePassportUiStateCopyWithImpl<$Res>
    implements $ProfilePassportUiStateCopyWith<$Res> {
  _$ProfilePassportUiStateCopyWithImpl(this._self, this._then);

  final ProfilePassportUiState _self;
  final $Res Function(ProfilePassportUiState) _then;

/// Create a copy of ProfilePassportUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? startService = freezed,}) {
  return _then(_self.copyWith(
startService: freezed == startService ? _self.startService : startService // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfilePassportUiState].
extension ProfilePassportUiStatePatterns on ProfilePassportUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfilePassportUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfilePassportUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfilePassportUiState value)  $default,){
final _that = this;
switch (_that) {
case _ProfilePassportUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfilePassportUiState value)?  $default,){
final _that = this;
switch (_that) {
case _ProfilePassportUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<Unit>? startService)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfilePassportUiState() when $default != null:
return $default(_that.startService);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<Unit>? startService)  $default,) {final _that = this;
switch (_that) {
case _ProfilePassportUiState():
return $default(_that.startService);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<Unit>? startService)?  $default,) {final _that = this;
switch (_that) {
case _ProfilePassportUiState() when $default != null:
return $default(_that.startService);case _:
  return null;

}
}

}

/// @nodoc


class _ProfilePassportUiState implements ProfilePassportUiState {
  const _ProfilePassportUiState({this.startService});
  

/// Result of starting the PPSDK service.
@override final  AsyncValue<Unit>? startService;

/// Create a copy of ProfilePassportUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfilePassportUiStateCopyWith<_ProfilePassportUiState> get copyWith => __$ProfilePassportUiStateCopyWithImpl<_ProfilePassportUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfilePassportUiState&&(identical(other.startService, startService) || other.startService == startService));
}


@override
int get hashCode => Object.hash(runtimeType,startService);

@override
String toString() {
  return 'ProfilePassportUiState(startService: $startService)';
}


}

/// @nodoc
abstract mixin class _$ProfilePassportUiStateCopyWith<$Res> implements $ProfilePassportUiStateCopyWith<$Res> {
  factory _$ProfilePassportUiStateCopyWith(_ProfilePassportUiState value, $Res Function(_ProfilePassportUiState) _then) = __$ProfilePassportUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<Unit>? startService
});




}
/// @nodoc
class __$ProfilePassportUiStateCopyWithImpl<$Res>
    implements _$ProfilePassportUiStateCopyWith<$Res> {
  __$ProfilePassportUiStateCopyWithImpl(this._self, this._then);

  final _ProfilePassportUiState _self;
  final $Res Function(_ProfilePassportUiState) _then;

/// Create a copy of ProfilePassportUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? startService = freezed,}) {
  return _then(_ProfilePassportUiState(
startService: freezed == startService ? _self.startService : startService // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,
  ));
}


}

// dart format on
