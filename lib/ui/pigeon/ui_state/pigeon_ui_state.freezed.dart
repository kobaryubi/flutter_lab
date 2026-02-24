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

 AsyncValue<String>? get greeting; AsyncValue<String>? get hostLanguage; AsyncValue<int>? get addResult; AsyncValue<bool>? get sendMessageResult; AsyncValue<String>? get flutterMethodResult;
/// Create a copy of PigeonUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PigeonUiStateCopyWith<PigeonUiState> get copyWith => _$PigeonUiStateCopyWithImpl<PigeonUiState>(this as PigeonUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PigeonUiState&&(identical(other.greeting, greeting) || other.greeting == greeting)&&(identical(other.hostLanguage, hostLanguage) || other.hostLanguage == hostLanguage)&&(identical(other.addResult, addResult) || other.addResult == addResult)&&(identical(other.sendMessageResult, sendMessageResult) || other.sendMessageResult == sendMessageResult)&&(identical(other.flutterMethodResult, flutterMethodResult) || other.flutterMethodResult == flutterMethodResult));
}


@override
int get hashCode => Object.hash(runtimeType,greeting,hostLanguage,addResult,sendMessageResult,flutterMethodResult);

@override
String toString() {
  return 'PigeonUiState(greeting: $greeting, hostLanguage: $hostLanguage, addResult: $addResult, sendMessageResult: $sendMessageResult, flutterMethodResult: $flutterMethodResult)';
}


}

/// @nodoc
abstract mixin class $PigeonUiStateCopyWith<$Res>  {
  factory $PigeonUiStateCopyWith(PigeonUiState value, $Res Function(PigeonUiState) _then) = _$PigeonUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<String>? greeting, AsyncValue<String>? hostLanguage, AsyncValue<int>? addResult, AsyncValue<bool>? sendMessageResult, AsyncValue<String>? flutterMethodResult
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
@pragma('vm:prefer-inline') @override $Res call({Object? greeting = freezed,Object? hostLanguage = freezed,Object? addResult = freezed,Object? sendMessageResult = freezed,Object? flutterMethodResult = freezed,}) {
  return _then(_self.copyWith(
greeting: freezed == greeting ? _self.greeting : greeting // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,hostLanguage: freezed == hostLanguage ? _self.hostLanguage : hostLanguage // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,addResult: freezed == addResult ? _self.addResult : addResult // ignore: cast_nullable_to_non_nullable
as AsyncValue<int>?,sendMessageResult: freezed == sendMessageResult ? _self.sendMessageResult : sendMessageResult // ignore: cast_nullable_to_non_nullable
as AsyncValue<bool>?,flutterMethodResult: freezed == flutterMethodResult ? _self.flutterMethodResult : flutterMethodResult // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [PigeonUiState].
extension PigeonUiStatePatterns on PigeonUiState {
@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PigeonUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PigeonUiState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PigeonUiState value)  $default,){
final _that = this;
switch (_that) {
case _PigeonUiState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PigeonUiState value)?  $default,){
final _that = this;
switch (_that) {
case _PigeonUiState() when $default != null:
return $default(_that);case _:
  return null;

}
}
@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<String>? greeting, AsyncValue<String>? hostLanguage, AsyncValue<int>? addResult, AsyncValue<bool>? sendMessageResult, AsyncValue<String>? flutterMethodResult)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PigeonUiState() when $default != null:
return $default(_that.greeting,_that.hostLanguage,_that.addResult,_that.sendMessageResult,_that.flutterMethodResult);case _:
  return orElse();

}
}
@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<String>? greeting, AsyncValue<String>? hostLanguage, AsyncValue<int>? addResult, AsyncValue<bool>? sendMessageResult, AsyncValue<String>? flutterMethodResult)  $default,) {final _that = this;
switch (_that) {
case _PigeonUiState():
return $default(_that.greeting,_that.hostLanguage,_that.addResult,_that.sendMessageResult,_that.flutterMethodResult);case _:
  throw StateError('Unexpected subclass');

}
}
@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<String>? greeting, AsyncValue<String>? hostLanguage, AsyncValue<int>? addResult, AsyncValue<bool>? sendMessageResult, AsyncValue<String>? flutterMethodResult)?  $default,) {final _that = this;
switch (_that) {
case _PigeonUiState() when $default != null:
return $default(_that.greeting,_that.hostLanguage,_that.addResult,_that.sendMessageResult,_that.flutterMethodResult);case _:
  return null;

}
}

}

/// @nodoc


class _PigeonUiState implements PigeonUiState {
  const _PigeonUiState({this.greeting, this.hostLanguage, this.addResult, this.sendMessageResult, this.flutterMethodResult});


@override final  AsyncValue<String>? greeting;
@override final  AsyncValue<String>? hostLanguage;
@override final  AsyncValue<int>? addResult;
@override final  AsyncValue<bool>? sendMessageResult;
@override final  AsyncValue<String>? flutterMethodResult;

/// Create a copy of PigeonUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PigeonUiStateCopyWith<_PigeonUiState> get copyWith => __$PigeonUiStateCopyWithImpl<_PigeonUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PigeonUiState&&(identical(other.greeting, greeting) || other.greeting == greeting)&&(identical(other.hostLanguage, hostLanguage) || other.hostLanguage == hostLanguage)&&(identical(other.addResult, addResult) || other.addResult == addResult)&&(identical(other.sendMessageResult, sendMessageResult) || other.sendMessageResult == sendMessageResult)&&(identical(other.flutterMethodResult, flutterMethodResult) || other.flutterMethodResult == flutterMethodResult));
}


@override
int get hashCode => Object.hash(runtimeType,greeting,hostLanguage,addResult,sendMessageResult,flutterMethodResult);

@override
String toString() {
  return 'PigeonUiState(greeting: $greeting, hostLanguage: $hostLanguage, addResult: $addResult, sendMessageResult: $sendMessageResult, flutterMethodResult: $flutterMethodResult)';
}


}

/// @nodoc
abstract mixin class _$PigeonUiStateCopyWith<$Res> implements $PigeonUiStateCopyWith<$Res> {
  factory _$PigeonUiStateCopyWith(_PigeonUiState value, $Res Function(_PigeonUiState) _then) = __$PigeonUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<String>? greeting, AsyncValue<String>? hostLanguage, AsyncValue<int>? addResult, AsyncValue<bool>? sendMessageResult, AsyncValue<String>? flutterMethodResult
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
@override @pragma('vm:prefer-inline') $Res call({Object? greeting = freezed,Object? hostLanguage = freezed,Object? addResult = freezed,Object? sendMessageResult = freezed,Object? flutterMethodResult = freezed,}) {
  return _then(_PigeonUiState(
greeting: freezed == greeting ? _self.greeting : greeting // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,hostLanguage: freezed == hostLanguage ? _self.hostLanguage : hostLanguage // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,addResult: freezed == addResult ? _self.addResult : addResult // ignore: cast_nullable_to_non_nullable
as AsyncValue<int>?,sendMessageResult: freezed == sendMessageResult ? _self.sendMessageResult : sendMessageResult // ignore: cast_nullable_to_non_nullable
as AsyncValue<bool>?,flutterMethodResult: freezed == flutterMethodResult ? _self.flutterMethodResult : flutterMethodResult // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>?,
  ));
}


}

// dart format on
