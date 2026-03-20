// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_performance_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FirebasePerformanceUiState {

/// Result of starting a trace.
 AsyncValue<String>? get startTrace;/// Result of stopping a trace.
 AsyncValue<Unit>? get stopTrace;/// Result of incrementing a metric.
 AsyncValue<Unit>? get incrementMetric;/// Result of putting an attribute.
 AsyncValue<Unit>? get putAttribute;
/// Create a copy of FirebasePerformanceUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FirebasePerformanceUiStateCopyWith<FirebasePerformanceUiState> get copyWith => _$FirebasePerformanceUiStateCopyWithImpl<FirebasePerformanceUiState>(this as FirebasePerformanceUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FirebasePerformanceUiState&&(identical(other.startTrace, startTrace) || other.startTrace == startTrace)&&(identical(other.stopTrace, stopTrace) || other.stopTrace == stopTrace)&&(identical(other.incrementMetric, incrementMetric) || other.incrementMetric == incrementMetric)&&(identical(other.putAttribute, putAttribute) || other.putAttribute == putAttribute));
}


@override
int get hashCode => Object.hash(runtimeType,startTrace,stopTrace,incrementMetric,putAttribute);

@override
String toString() {
  return 'FirebasePerformanceUiState(startTrace: $startTrace, stopTrace: $stopTrace, incrementMetric: $incrementMetric, putAttribute: $putAttribute)';
}


}

/// @nodoc
abstract mixin class $FirebasePerformanceUiStateCopyWith<$Res>  {
  factory $FirebasePerformanceUiStateCopyWith(FirebasePerformanceUiState value, $Res Function(FirebasePerformanceUiState) _then) = _$FirebasePerformanceUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<String>? startTrace, AsyncValue<Unit>? stopTrace, AsyncValue<Unit>? incrementMetric, AsyncValue<Unit>? putAttribute
});




}
/// @nodoc
class _$FirebasePerformanceUiStateCopyWithImpl<$Res>
    implements $FirebasePerformanceUiStateCopyWith<$Res> {
  _$FirebasePerformanceUiStateCopyWithImpl(this._self, this._then);

  final FirebasePerformanceUiState _self;
  final $Res Function(FirebasePerformanceUiState) _then;

/// Create a copy of FirebasePerformanceUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? startTrace = freezed,Object? stopTrace = freezed,Object? incrementMetric = freezed,Object? putAttribute = freezed,}) {
  return _then(_self.copyWith(
startTrace: freezed == startTrace ? _self.startTrace : startTrace // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,stopTrace: freezed == stopTrace ? _self.stopTrace : stopTrace // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,incrementMetric: freezed == incrementMetric ? _self.incrementMetric : incrementMetric // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,putAttribute: freezed == putAttribute ? _self.putAttribute : putAttribute // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,
  ));
}

}


/// Adds pattern-matching-related methods to [FirebasePerformanceUiState].
extension FirebasePerformanceUiStatePatterns on FirebasePerformanceUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FirebasePerformanceUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FirebasePerformanceUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FirebasePerformanceUiState value)  $default,){
final _that = this;
switch (_that) {
case _FirebasePerformanceUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FirebasePerformanceUiState value)?  $default,){
final _that = this;
switch (_that) {
case _FirebasePerformanceUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<String>? startTrace,  AsyncValue<Unit>? stopTrace,  AsyncValue<Unit>? incrementMetric,  AsyncValue<Unit>? putAttribute)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FirebasePerformanceUiState() when $default != null:
return $default(_that.startTrace,_that.stopTrace,_that.incrementMetric,_that.putAttribute);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<String>? startTrace,  AsyncValue<Unit>? stopTrace,  AsyncValue<Unit>? incrementMetric,  AsyncValue<Unit>? putAttribute)  $default,) {final _that = this;
switch (_that) {
case _FirebasePerformanceUiState():
return $default(_that.startTrace,_that.stopTrace,_that.incrementMetric,_that.putAttribute);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<String>? startTrace,  AsyncValue<Unit>? stopTrace,  AsyncValue<Unit>? incrementMetric,  AsyncValue<Unit>? putAttribute)?  $default,) {final _that = this;
switch (_that) {
case _FirebasePerformanceUiState() when $default != null:
return $default(_that.startTrace,_that.stopTrace,_that.incrementMetric,_that.putAttribute);case _:
  return null;

}
}

}

/// @nodoc


class _FirebasePerformanceUiState implements FirebasePerformanceUiState {
  const _FirebasePerformanceUiState({this.startTrace, this.stopTrace, this.incrementMetric, this.putAttribute});
  

/// Result of starting a trace.
@override final  AsyncValue<String>? startTrace;
/// Result of stopping a trace.
@override final  AsyncValue<Unit>? stopTrace;
/// Result of incrementing a metric.
@override final  AsyncValue<Unit>? incrementMetric;
/// Result of putting an attribute.
@override final  AsyncValue<Unit>? putAttribute;

/// Create a copy of FirebasePerformanceUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FirebasePerformanceUiStateCopyWith<_FirebasePerformanceUiState> get copyWith => __$FirebasePerformanceUiStateCopyWithImpl<_FirebasePerformanceUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FirebasePerformanceUiState&&(identical(other.startTrace, startTrace) || other.startTrace == startTrace)&&(identical(other.stopTrace, stopTrace) || other.stopTrace == stopTrace)&&(identical(other.incrementMetric, incrementMetric) || other.incrementMetric == incrementMetric)&&(identical(other.putAttribute, putAttribute) || other.putAttribute == putAttribute));
}


@override
int get hashCode => Object.hash(runtimeType,startTrace,stopTrace,incrementMetric,putAttribute);

@override
String toString() {
  return 'FirebasePerformanceUiState(startTrace: $startTrace, stopTrace: $stopTrace, incrementMetric: $incrementMetric, putAttribute: $putAttribute)';
}


}

/// @nodoc
abstract mixin class _$FirebasePerformanceUiStateCopyWith<$Res> implements $FirebasePerformanceUiStateCopyWith<$Res> {
  factory _$FirebasePerformanceUiStateCopyWith(_FirebasePerformanceUiState value, $Res Function(_FirebasePerformanceUiState) _then) = __$FirebasePerformanceUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<String>? startTrace, AsyncValue<Unit>? stopTrace, AsyncValue<Unit>? incrementMetric, AsyncValue<Unit>? putAttribute
});




}
/// @nodoc
class __$FirebasePerformanceUiStateCopyWithImpl<$Res>
    implements _$FirebasePerformanceUiStateCopyWith<$Res> {
  __$FirebasePerformanceUiStateCopyWithImpl(this._self, this._then);

  final _FirebasePerformanceUiState _self;
  final $Res Function(_FirebasePerformanceUiState) _then;

/// Create a copy of FirebasePerformanceUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? startTrace = freezed,Object? stopTrace = freezed,Object? incrementMetric = freezed,Object? putAttribute = freezed,}) {
  return _then(_FirebasePerformanceUiState(
startTrace: freezed == startTrace ? _self.startTrace : startTrace // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,stopTrace: freezed == stopTrace ? _self.stopTrace : stopTrace // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,incrementMetric: freezed == incrementMetric ? _self.incrementMetric : incrementMetric // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,putAttribute: freezed == putAttribute ? _self.putAttribute : putAttribute // ignore: cast_nullable_to_non_nullable
as AsyncValue<Unit>?,
  ));
}


}

// dart format on
