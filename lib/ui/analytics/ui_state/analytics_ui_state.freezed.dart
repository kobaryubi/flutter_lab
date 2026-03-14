// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AnalyticsUiState {

/// Result of setting default event parameters.
 AsyncValue<Unit>? get setDefaultParameters;/// Result of logging a custom event.
 AsyncValue<Unit>? get logEvent;
/// Create a copy of AnalyticsUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalyticsUiStateCopyWith<AnalyticsUiState> get copyWith => _$AnalyticsUiStateCopyWithImpl<AnalyticsUiState>(this as AnalyticsUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalyticsUiState&&(identical(other.setDefaultParameters, setDefaultParameters) || other.setDefaultParameters == setDefaultParameters)&&(identical(other.logEvent, logEvent) || other.logEvent == logEvent));
}


@override
int get hashCode => Object.hash(runtimeType,setDefaultParameters,logEvent);

@override
String toString() {
  return 'AnalyticsUiState(setDefaultParameters: $setDefaultParameters, logEvent: $logEvent)';
}


}

/// @nodoc
abstract mixin class $AnalyticsUiStateCopyWith<$Res>  {
  factory $AnalyticsUiStateCopyWith(AnalyticsUiState value, $Res Function(AnalyticsUiState) _then) = _$AnalyticsUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<Unit>? setDefaultParameters, AsyncValue<Unit>? logEvent
});




}
/// @nodoc
class _$AnalyticsUiStateCopyWithImpl<$Res>
    implements $AnalyticsUiStateCopyWith<$Res> {
  _$AnalyticsUiStateCopyWithImpl(this._self, this._then);

  final AnalyticsUiState _self;
  final $Res Function(AnalyticsUiState) _then;

/// Create a copy of AnalyticsUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? setDefaultParameters = freezed,Object? logEvent = freezed,}) {
  return _then(_self.copyWith(
setDefaultParameters: freezed == setDefaultParameters ? _self.setDefaultParameters : setDefaultParameters // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,logEvent: freezed == logEvent ? _self.logEvent : logEvent // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AnalyticsUiState].
extension AnalyticsUiStatePatterns on AnalyticsUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalyticsUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalyticsUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalyticsUiState value)  $default,){
final _that = this;
switch (_that) {
case _AnalyticsUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalyticsUiState value)?  $default,){
final _that = this;
switch (_that) {
case _AnalyticsUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<Unit>? setDefaultParameters,  AsyncValue<Unit>? logEvent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalyticsUiState() when $default != null:
return $default(_that.setDefaultParameters,_that.logEvent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<Unit>? setDefaultParameters,  AsyncValue<Unit>? logEvent)  $default,) {final _that = this;
switch (_that) {
case _AnalyticsUiState():
return $default(_that.setDefaultParameters,_that.logEvent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<Unit>? setDefaultParameters,  AsyncValue<Unit>? logEvent)?  $default,) {final _that = this;
switch (_that) {
case _AnalyticsUiState() when $default != null:
return $default(_that.setDefaultParameters,_that.logEvent);case _:
  return null;

}
}

}

/// @nodoc


class _AnalyticsUiState implements AnalyticsUiState {
  const _AnalyticsUiState({this.setDefaultParameters, this.logEvent});
  

/// Result of setting default event parameters.
@override final  AsyncValue<Unit>? setDefaultParameters;
/// Result of logging a custom event.
@override final  AsyncValue<Unit>? logEvent;

/// Create a copy of AnalyticsUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalyticsUiStateCopyWith<_AnalyticsUiState> get copyWith => __$AnalyticsUiStateCopyWithImpl<_AnalyticsUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalyticsUiState&&(identical(other.setDefaultParameters, setDefaultParameters) || other.setDefaultParameters == setDefaultParameters)&&(identical(other.logEvent, logEvent) || other.logEvent == logEvent));
}


@override
int get hashCode => Object.hash(runtimeType,setDefaultParameters,logEvent);

@override
String toString() {
  return 'AnalyticsUiState(setDefaultParameters: $setDefaultParameters, logEvent: $logEvent)';
}


}

/// @nodoc
abstract mixin class _$AnalyticsUiStateCopyWith<$Res> implements $AnalyticsUiStateCopyWith<$Res> {
  factory _$AnalyticsUiStateCopyWith(_AnalyticsUiState value, $Res Function(_AnalyticsUiState) _then) = __$AnalyticsUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<Unit>? setDefaultParameters, AsyncValue<Unit>? logEvent
});




}
/// @nodoc
class __$AnalyticsUiStateCopyWithImpl<$Res>
    implements _$AnalyticsUiStateCopyWith<$Res> {
  __$AnalyticsUiStateCopyWithImpl(this._self, this._then);

  final _AnalyticsUiState _self;
  final $Res Function(_AnalyticsUiState) _then;

/// Create a copy of AnalyticsUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? setDefaultParameters = freezed,Object? logEvent = freezed,}) {
  return _then(_AnalyticsUiState(
setDefaultParameters: freezed == setDefaultParameters ? _self.setDefaultParameters : setDefaultParameters // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,logEvent: freezed == logEvent ? _self.logEvent : logEvent // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,
  ));
}


}

// dart format on
