// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_handling_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ErrorHandlingUiState {

 AsyncValue<List<Todo>>? get todos;
/// Create a copy of ErrorHandlingUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorHandlingUiStateCopyWith<ErrorHandlingUiState> get copyWith => _$ErrorHandlingUiStateCopyWithImpl<ErrorHandlingUiState>(this as ErrorHandlingUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorHandlingUiState&&(identical(other.todos, todos) || other.todos == todos));
}


@override
int get hashCode => Object.hash(runtimeType,todos);

@override
String toString() {
  return 'ErrorHandlingUiState(todos: $todos)';
}


}

/// @nodoc
abstract mixin class $ErrorHandlingUiStateCopyWith<$Res>  {
  factory $ErrorHandlingUiStateCopyWith(ErrorHandlingUiState value, $Res Function(ErrorHandlingUiState) _then) = _$ErrorHandlingUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<List<Todo>>? todos
});




}
/// @nodoc
class _$ErrorHandlingUiStateCopyWithImpl<$Res>
    implements $ErrorHandlingUiStateCopyWith<$Res> {
  _$ErrorHandlingUiStateCopyWithImpl(this._self, this._then);

  final ErrorHandlingUiState _self;
  final $Res Function(ErrorHandlingUiState) _then;

/// Create a copy of ErrorHandlingUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? todos = freezed,}) {
  return _then(_self.copyWith(
todos: freezed == todos ? _self.todos : todos // ignore: cast_nullable_to_non_nullable
as AsyncValue<List<Todo>>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ErrorHandlingUiState].
extension ErrorHandlingUiStatePatterns on ErrorHandlingUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ErrorHandlingUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ErrorHandlingUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ErrorHandlingUiState value)  $default,){
final _that = this;
switch (_that) {
case _ErrorHandlingUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ErrorHandlingUiState value)?  $default,){
final _that = this;
switch (_that) {
case _ErrorHandlingUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<List<Todo>>? todos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ErrorHandlingUiState() when $default != null:
return $default(_that.todos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<List<Todo>>? todos)  $default,) {final _that = this;
switch (_that) {
case _ErrorHandlingUiState():
return $default(_that.todos);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<List<Todo>>? todos)?  $default,) {final _that = this;
switch (_that) {
case _ErrorHandlingUiState() when $default != null:
return $default(_that.todos);case _:
  return null;

}
}

}

/// @nodoc


class _ErrorHandlingUiState implements ErrorHandlingUiState {
  const _ErrorHandlingUiState({required this.todos});
  

@override final  AsyncValue<List<Todo>>? todos;

/// Create a copy of ErrorHandlingUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorHandlingUiStateCopyWith<_ErrorHandlingUiState> get copyWith => __$ErrorHandlingUiStateCopyWithImpl<_ErrorHandlingUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorHandlingUiState&&(identical(other.todos, todos) || other.todos == todos));
}


@override
int get hashCode => Object.hash(runtimeType,todos);

@override
String toString() {
  return 'ErrorHandlingUiState(todos: $todos)';
}


}

/// @nodoc
abstract mixin class _$ErrorHandlingUiStateCopyWith<$Res> implements $ErrorHandlingUiStateCopyWith<$Res> {
  factory _$ErrorHandlingUiStateCopyWith(_ErrorHandlingUiState value, $Res Function(_ErrorHandlingUiState) _then) = __$ErrorHandlingUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<List<Todo>>? todos
});




}
/// @nodoc
class __$ErrorHandlingUiStateCopyWithImpl<$Res>
    implements _$ErrorHandlingUiStateCopyWith<$Res> {
  __$ErrorHandlingUiStateCopyWithImpl(this._self, this._then);

  final _ErrorHandlingUiState _self;
  final $Res Function(_ErrorHandlingUiState) _then;

/// Create a copy of ErrorHandlingUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? todos = freezed,}) {
  return _then(_ErrorHandlingUiState(
todos: freezed == todos ? _self.todos : todos // ignore: cast_nullable_to_non_nullable
as AsyncValue<List<Todo>>?,
  ));
}


}

// dart format on
