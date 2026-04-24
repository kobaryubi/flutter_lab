// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tar_download_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TarDownloadResult {

 String get path; int get sizeBytes;
/// Create a copy of TarDownloadResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TarDownloadResultCopyWith<TarDownloadResult> get copyWith => _$TarDownloadResultCopyWithImpl<TarDownloadResult>(this as TarDownloadResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TarDownloadResult&&(identical(other.path, path) || other.path == path)&&(identical(other.sizeBytes, sizeBytes) || other.sizeBytes == sizeBytes));
}


@override
int get hashCode => Object.hash(runtimeType,path,sizeBytes);

@override
String toString() {
  return 'TarDownloadResult(path: $path, sizeBytes: $sizeBytes)';
}


}

/// @nodoc
abstract mixin class $TarDownloadResultCopyWith<$Res>  {
  factory $TarDownloadResultCopyWith(TarDownloadResult value, $Res Function(TarDownloadResult) _then) = _$TarDownloadResultCopyWithImpl;
@useResult
$Res call({
 String path, int sizeBytes
});




}
/// @nodoc
class _$TarDownloadResultCopyWithImpl<$Res>
    implements $TarDownloadResultCopyWith<$Res> {
  _$TarDownloadResultCopyWithImpl(this._self, this._then);

  final TarDownloadResult _self;
  final $Res Function(TarDownloadResult) _then;

/// Create a copy of TarDownloadResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? path = null,Object? sizeBytes = null,}) {
  return _then(_self.copyWith(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,sizeBytes: null == sizeBytes ? _self.sizeBytes : sizeBytes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TarDownloadResult].
extension TarDownloadResultPatterns on TarDownloadResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TarDownloadResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TarDownloadResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TarDownloadResult value)  $default,){
final _that = this;
switch (_that) {
case _TarDownloadResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TarDownloadResult value)?  $default,){
final _that = this;
switch (_that) {
case _TarDownloadResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String path,  int sizeBytes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TarDownloadResult() when $default != null:
return $default(_that.path,_that.sizeBytes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String path,  int sizeBytes)  $default,) {final _that = this;
switch (_that) {
case _TarDownloadResult():
return $default(_that.path,_that.sizeBytes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String path,  int sizeBytes)?  $default,) {final _that = this;
switch (_that) {
case _TarDownloadResult() when $default != null:
return $default(_that.path,_that.sizeBytes);case _:
  return null;

}
}

}

/// @nodoc


class _TarDownloadResult implements TarDownloadResult {
  const _TarDownloadResult({required this.path, required this.sizeBytes});
  

@override final  String path;
@override final  int sizeBytes;

/// Create a copy of TarDownloadResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TarDownloadResultCopyWith<_TarDownloadResult> get copyWith => __$TarDownloadResultCopyWithImpl<_TarDownloadResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TarDownloadResult&&(identical(other.path, path) || other.path == path)&&(identical(other.sizeBytes, sizeBytes) || other.sizeBytes == sizeBytes));
}


@override
int get hashCode => Object.hash(runtimeType,path,sizeBytes);

@override
String toString() {
  return 'TarDownloadResult(path: $path, sizeBytes: $sizeBytes)';
}


}

/// @nodoc
abstract mixin class _$TarDownloadResultCopyWith<$Res> implements $TarDownloadResultCopyWith<$Res> {
  factory _$TarDownloadResultCopyWith(_TarDownloadResult value, $Res Function(_TarDownloadResult) _then) = __$TarDownloadResultCopyWithImpl;
@override @useResult
$Res call({
 String path, int sizeBytes
});




}
/// @nodoc
class __$TarDownloadResultCopyWithImpl<$Res>
    implements _$TarDownloadResultCopyWith<$Res> {
  __$TarDownloadResultCopyWithImpl(this._self, this._then);

  final _TarDownloadResult _self;
  final $Res Function(_TarDownloadResult) _then;

/// Create a copy of TarDownloadResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,Object? sizeBytes = null,}) {
  return _then(_TarDownloadResult(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,sizeBytes: null == sizeBytes ? _self.sizeBytes : sizeBytes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$TarDownloadUiState {

 AsyncValue<TarDownloadResult>? get result;
/// Create a copy of TarDownloadUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TarDownloadUiStateCopyWith<TarDownloadUiState> get copyWith => _$TarDownloadUiStateCopyWithImpl<TarDownloadUiState>(this as TarDownloadUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TarDownloadUiState&&(identical(other.result, result) || other.result == result));
}


@override
int get hashCode => Object.hash(runtimeType,result);

@override
String toString() {
  return 'TarDownloadUiState(result: $result)';
}


}

/// @nodoc
abstract mixin class $TarDownloadUiStateCopyWith<$Res>  {
  factory $TarDownloadUiStateCopyWith(TarDownloadUiState value, $Res Function(TarDownloadUiState) _then) = _$TarDownloadUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<TarDownloadResult>? result
});




}
/// @nodoc
class _$TarDownloadUiStateCopyWithImpl<$Res>
    implements $TarDownloadUiStateCopyWith<$Res> {
  _$TarDownloadUiStateCopyWithImpl(this._self, this._then);

  final TarDownloadUiState _self;
  final $Res Function(TarDownloadUiState) _then;

/// Create a copy of TarDownloadUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? result = freezed,}) {
  return _then(_self.copyWith(
result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as AsyncValue<TarDownloadResult>?,
  ));
}

}


/// Adds pattern-matching-related methods to [TarDownloadUiState].
extension TarDownloadUiStatePatterns on TarDownloadUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TarDownloadUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TarDownloadUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TarDownloadUiState value)  $default,){
final _that = this;
switch (_that) {
case _TarDownloadUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TarDownloadUiState value)?  $default,){
final _that = this;
switch (_that) {
case _TarDownloadUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<TarDownloadResult>? result)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TarDownloadUiState() when $default != null:
return $default(_that.result);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<TarDownloadResult>? result)  $default,) {final _that = this;
switch (_that) {
case _TarDownloadUiState():
return $default(_that.result);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<TarDownloadResult>? result)?  $default,) {final _that = this;
switch (_that) {
case _TarDownloadUiState() when $default != null:
return $default(_that.result);case _:
  return null;

}
}

}

/// @nodoc


class _TarDownloadUiState implements TarDownloadUiState {
  const _TarDownloadUiState({this.result});
  

@override final  AsyncValue<TarDownloadResult>? result;

/// Create a copy of TarDownloadUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TarDownloadUiStateCopyWith<_TarDownloadUiState> get copyWith => __$TarDownloadUiStateCopyWithImpl<_TarDownloadUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TarDownloadUiState&&(identical(other.result, result) || other.result == result));
}


@override
int get hashCode => Object.hash(runtimeType,result);

@override
String toString() {
  return 'TarDownloadUiState(result: $result)';
}


}

/// @nodoc
abstract mixin class _$TarDownloadUiStateCopyWith<$Res> implements $TarDownloadUiStateCopyWith<$Res> {
  factory _$TarDownloadUiStateCopyWith(_TarDownloadUiState value, $Res Function(_TarDownloadUiState) _then) = __$TarDownloadUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<TarDownloadResult>? result
});




}
/// @nodoc
class __$TarDownloadUiStateCopyWithImpl<$Res>
    implements _$TarDownloadUiStateCopyWith<$Res> {
  __$TarDownloadUiStateCopyWithImpl(this._self, this._then);

  final _TarDownloadUiState _self;
  final $Res Function(_TarDownloadUiState) _then;

/// Create a copy of TarDownloadUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? result = freezed,}) {
  return _then(_TarDownloadUiState(
result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as AsyncValue<TarDownloadResult>?,
  ));
}


}

// dart format on
