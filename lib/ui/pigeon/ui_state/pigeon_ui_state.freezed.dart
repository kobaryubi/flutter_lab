// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pigeon_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PigeonUiState {

/// Greeting result from GreetingApi.greet.
 AsyncValue<String>? get greeting;/// Host language from ExampleHostApi.getHostLanguage.
 AsyncValue<String>? get hostLanguage;/// Addition result from ExampleHostApi.add.
 AsyncValue<int>? get addResult;/// Send message result from ExampleHostApi.sendMessage.
 AsyncValue<bool>? get sendMessageResult;/// Result from triggering native to call Dart's FlutterApi via
/// MethodChannel.
 AsyncValue<String>? get callFlutterMethodResult;/// Flutter method callback result from MessageFlutterApi.
 AsyncValue<String>? get flutterMethodResult;
/// Create a copy of PigeonUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PigeonUiStateCopyWith<PigeonUiState> get copyWith => _$PigeonUiStateCopyWithImpl<PigeonUiState>(this as PigeonUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PigeonUiState&&(identical(other.greeting, greeting) || other.greeting == greeting)&&(identical(other.hostLanguage, hostLanguage) || other.hostLanguage == hostLanguage)&&(identical(other.addResult, addResult) || other.addResult == addResult)&&(identical(other.sendMessageResult, sendMessageResult) || other.sendMessageResult == sendMessageResult)&&(identical(other.callFlutterMethodResult, callFlutterMethodResult) || other.callFlutterMethodResult == callFlutterMethodResult)&&(identical(other.flutterMethodResult, flutterMethodResult) || other.flutterMethodResult == flutterMethodResult));
}


@override
int get hashCode => Object.hash(runtimeType,greeting,hostLanguage,addResult,sendMessageResult,callFlutterMethodResult,flutterMethodResult);

@override
String toString() {
  return 'PigeonUiState(greeting: $greeting, hostLanguage: $hostLanguage, addResult: $addResult, sendMessageResult: $sendMessageResult, callFlutterMethodResult: $callFlutterMethodResult, flutterMethodResult: $flutterMethodResult)';
}


}

/// @nodoc
abstract mixin class $PigeonUiStateCopyWith<$Res>  {
  factory $PigeonUiStateCopyWith(PigeonUiState value, $Res Function(PigeonUiState) _then) = _$PigeonUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<String>? greeting, AsyncValue<String>? hostLanguage, AsyncValue<int>? addResult, AsyncValue<bool>? sendMessageResult, AsyncValue<String>? callFlutterMethodResult, AsyncValue<String>? flutterMethodResult
});




}
/// @nodoc
class _$PigeonUiStateCopyWithImpl<$Res>
    implements $PigeonUiStateCopyWith<$Res> {
  _$PigeonUiStateCopyWithImpl(this._self, this._then);

  final PigeonUiState _self;
  final $Res Function(PigeonUiState) _then;

/// Create a copy of PigeonUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? greeting = freezed,Object? hostLanguage = freezed,Object? addResult = freezed,Object? sendMessageResult = freezed,Object? callFlutterMethodResult = freezed,Object? flutterMethodResult = freezed,}) {
  return _then(_self.copyWith(
greeting: freezed == greeting ? _self.greeting : greeting // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,hostLanguage: freezed == hostLanguage ? _self.hostLanguage : hostLanguage // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,addResult: freezed == addResult ? _self.addResult : addResult // ignore: cast_nullable_to_non_nullable
as AsyncValue<int>?,sendMessageResult: freezed == sendMessageResult ? _self.sendMessageResult : sendMessageResult // ignore: cast_nullable_to_non_nullable
as AsyncValue<bool>?,callFlutterMethodResult: freezed == callFlutterMethodResult ? _self.callFlutterMethodResult : callFlutterMethodResult // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,flutterMethodResult: freezed == flutterMethodResult ? _self.flutterMethodResult : flutterMethodResult // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [PigeonUiState].
extension PigeonUiStatePatterns on PigeonUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PigeonUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PigeonUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PigeonUiState value)  $default,){
final _that = this;
switch (_that) {
case _PigeonUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PigeonUiState value)?  $default,){
final _that = this;
switch (_that) {
case _PigeonUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<String>? greeting,  AsyncValue<String>? hostLanguage,  AsyncValue<int>? addResult,  AsyncValue<bool>? sendMessageResult,  AsyncValue<String>? callFlutterMethodResult,  AsyncValue<String>? flutterMethodResult)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PigeonUiState() when $default != null:
return $default(_that.greeting,_that.hostLanguage,_that.addResult,_that.sendMessageResult,_that.callFlutterMethodResult,_that.flutterMethodResult);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<String>? greeting,  AsyncValue<String>? hostLanguage,  AsyncValue<int>? addResult,  AsyncValue<bool>? sendMessageResult,  AsyncValue<String>? callFlutterMethodResult,  AsyncValue<String>? flutterMethodResult)  $default,) {final _that = this;
switch (_that) {
case _PigeonUiState():
return $default(_that.greeting,_that.hostLanguage,_that.addResult,_that.sendMessageResult,_that.callFlutterMethodResult,_that.flutterMethodResult);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<String>? greeting,  AsyncValue<String>? hostLanguage,  AsyncValue<int>? addResult,  AsyncValue<bool>? sendMessageResult,  AsyncValue<String>? callFlutterMethodResult,  AsyncValue<String>? flutterMethodResult)?  $default,) {final _that = this;
switch (_that) {
case _PigeonUiState() when $default != null:
return $default(_that.greeting,_that.hostLanguage,_that.addResult,_that.sendMessageResult,_that.callFlutterMethodResult,_that.flutterMethodResult);case _:
  return null;

}
}

}

/// @nodoc


class _PigeonUiState implements PigeonUiState {
  const _PigeonUiState({this.greeting, this.hostLanguage, this.addResult, this.sendMessageResult, this.callFlutterMethodResult, this.flutterMethodResult});
  

/// Greeting result from GreetingApi.greet.
@override final  AsyncValue<String>? greeting;
/// Host language from ExampleHostApi.getHostLanguage.
@override final  AsyncValue<String>? hostLanguage;
/// Addition result from ExampleHostApi.add.
@override final  AsyncValue<int>? addResult;
/// Send message result from ExampleHostApi.sendMessage.
@override final  AsyncValue<bool>? sendMessageResult;
/// Result from triggering native to call Dart's FlutterApi via
/// MethodChannel.
@override final  AsyncValue<String>? callFlutterMethodResult;
/// Flutter method callback result from MessageFlutterApi.
@override final  AsyncValue<String>? flutterMethodResult;

/// Create a copy of PigeonUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PigeonUiStateCopyWith<_PigeonUiState> get copyWith => __$PigeonUiStateCopyWithImpl<_PigeonUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PigeonUiState&&(identical(other.greeting, greeting) || other.greeting == greeting)&&(identical(other.hostLanguage, hostLanguage) || other.hostLanguage == hostLanguage)&&(identical(other.addResult, addResult) || other.addResult == addResult)&&(identical(other.sendMessageResult, sendMessageResult) || other.sendMessageResult == sendMessageResult)&&(identical(other.callFlutterMethodResult, callFlutterMethodResult) || other.callFlutterMethodResult == callFlutterMethodResult)&&(identical(other.flutterMethodResult, flutterMethodResult) || other.flutterMethodResult == flutterMethodResult));
}


@override
int get hashCode => Object.hash(runtimeType,greeting,hostLanguage,addResult,sendMessageResult,callFlutterMethodResult,flutterMethodResult);

@override
String toString() {
  return 'PigeonUiState(greeting: $greeting, hostLanguage: $hostLanguage, addResult: $addResult, sendMessageResult: $sendMessageResult, callFlutterMethodResult: $callFlutterMethodResult, flutterMethodResult: $flutterMethodResult)';
}


}

/// @nodoc
abstract mixin class _$PigeonUiStateCopyWith<$Res> implements $PigeonUiStateCopyWith<$Res> {
  factory _$PigeonUiStateCopyWith(_PigeonUiState value, $Res Function(_PigeonUiState) _then) = __$PigeonUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<String>? greeting, AsyncValue<String>? hostLanguage, AsyncValue<int>? addResult, AsyncValue<bool>? sendMessageResult, AsyncValue<String>? callFlutterMethodResult, AsyncValue<String>? flutterMethodResult
});




}
/// @nodoc
class __$PigeonUiStateCopyWithImpl<$Res>
    implements _$PigeonUiStateCopyWith<$Res> {
  __$PigeonUiStateCopyWithImpl(this._self, this._then);

  final _PigeonUiState _self;
  final $Res Function(_PigeonUiState) _then;

/// Create a copy of PigeonUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? greeting = freezed,Object? hostLanguage = freezed,Object? addResult = freezed,Object? sendMessageResult = freezed,Object? callFlutterMethodResult = freezed,Object? flutterMethodResult = freezed,}) {
  return _then(_PigeonUiState(
greeting: freezed == greeting ? _self.greeting : greeting // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,hostLanguage: freezed == hostLanguage ? _self.hostLanguage : hostLanguage // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,addResult: freezed == addResult ? _self.addResult : addResult // ignore: cast_nullable_to_non_nullable
as AsyncValue<int>?,sendMessageResult: freezed == sendMessageResult ? _self.sendMessageResult : sendMessageResult // ignore: cast_nullable_to_non_nullable
as AsyncValue<bool>?,callFlutterMethodResult: freezed == callFlutterMethodResult ? _self.callFlutterMethodResult : callFlutterMethodResult // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,flutterMethodResult: freezed == flutterMethodResult ? _self.flutterMethodResult : flutterMethodResult // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,
  ));
}


}

// dart format on
