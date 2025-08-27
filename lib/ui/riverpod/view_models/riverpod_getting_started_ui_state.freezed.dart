// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'riverpod_getting_started_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RiverpodGettingStartedUiState {

 int get uncompletedTodosCount; TodoListFilter get filter; List<Todo> get filteredTodos;
/// Create a copy of RiverpodGettingStartedUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RiverpodGettingStartedUiStateCopyWith<RiverpodGettingStartedUiState> get copyWith => _$RiverpodGettingStartedUiStateCopyWithImpl<RiverpodGettingStartedUiState>(this as RiverpodGettingStartedUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RiverpodGettingStartedUiState&&(identical(other.uncompletedTodosCount, uncompletedTodosCount) || other.uncompletedTodosCount == uncompletedTodosCount)&&(identical(other.filter, filter) || other.filter == filter)&&const DeepCollectionEquality().equals(other.filteredTodos, filteredTodos));
}


@override
int get hashCode => Object.hash(runtimeType,uncompletedTodosCount,filter,const DeepCollectionEquality().hash(filteredTodos));

@override
String toString() {
  return 'RiverpodGettingStartedUiState(uncompletedTodosCount: $uncompletedTodosCount, filter: $filter, filteredTodos: $filteredTodos)';
}


}

/// @nodoc
abstract mixin class $RiverpodGettingStartedUiStateCopyWith<$Res>  {
  factory $RiverpodGettingStartedUiStateCopyWith(RiverpodGettingStartedUiState value, $Res Function(RiverpodGettingStartedUiState) _then) = _$RiverpodGettingStartedUiStateCopyWithImpl;
@useResult
$Res call({
 int uncompletedTodosCount, TodoListFilter filter, List<Todo> filteredTodos
});




}
/// @nodoc
class _$RiverpodGettingStartedUiStateCopyWithImpl<$Res>
    implements $RiverpodGettingStartedUiStateCopyWith<$Res> {
  _$RiverpodGettingStartedUiStateCopyWithImpl(this._self, this._then);

  final RiverpodGettingStartedUiState _self;
  final $Res Function(RiverpodGettingStartedUiState) _then;

/// Create a copy of RiverpodGettingStartedUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uncompletedTodosCount = null,Object? filter = null,Object? filteredTodos = null,}) {
  return _then(_self.copyWith(
uncompletedTodosCount: null == uncompletedTodosCount ? _self.uncompletedTodosCount : uncompletedTodosCount // ignore: cast_nullable_to_non_nullable
as int,filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as TodoListFilter,filteredTodos: null == filteredTodos ? _self.filteredTodos : filteredTodos // ignore: cast_nullable_to_non_nullable
as List<Todo>,
  ));
}

}


/// Adds pattern-matching-related methods to [RiverpodGettingStartedUiState].
extension RiverpodGettingStartedUiStatePatterns on RiverpodGettingStartedUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RiverpodGettingStartedUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RiverpodGettingStartedUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RiverpodGettingStartedUiState value)  $default,){
final _that = this;
switch (_that) {
case _RiverpodGettingStartedUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RiverpodGettingStartedUiState value)?  $default,){
final _that = this;
switch (_that) {
case _RiverpodGettingStartedUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int uncompletedTodosCount,  TodoListFilter filter,  List<Todo> filteredTodos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RiverpodGettingStartedUiState() when $default != null:
return $default(_that.uncompletedTodosCount,_that.filter,_that.filteredTodos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int uncompletedTodosCount,  TodoListFilter filter,  List<Todo> filteredTodos)  $default,) {final _that = this;
switch (_that) {
case _RiverpodGettingStartedUiState():
return $default(_that.uncompletedTodosCount,_that.filter,_that.filteredTodos);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int uncompletedTodosCount,  TodoListFilter filter,  List<Todo> filteredTodos)?  $default,) {final _that = this;
switch (_that) {
case _RiverpodGettingStartedUiState() when $default != null:
return $default(_that.uncompletedTodosCount,_that.filter,_that.filteredTodos);case _:
  return null;

}
}

}

/// @nodoc


class _RiverpodGettingStartedUiState implements RiverpodGettingStartedUiState {
  const _RiverpodGettingStartedUiState({required this.uncompletedTodosCount, required this.filter, required final  List<Todo> filteredTodos}): _filteredTodos = filteredTodos;
  

@override final  int uncompletedTodosCount;
@override final  TodoListFilter filter;
 final  List<Todo> _filteredTodos;
@override List<Todo> get filteredTodos {
  if (_filteredTodos is EqualUnmodifiableListView) return _filteredTodos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredTodos);
}


/// Create a copy of RiverpodGettingStartedUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RiverpodGettingStartedUiStateCopyWith<_RiverpodGettingStartedUiState> get copyWith => __$RiverpodGettingStartedUiStateCopyWithImpl<_RiverpodGettingStartedUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RiverpodGettingStartedUiState&&(identical(other.uncompletedTodosCount, uncompletedTodosCount) || other.uncompletedTodosCount == uncompletedTodosCount)&&(identical(other.filter, filter) || other.filter == filter)&&const DeepCollectionEquality().equals(other._filteredTodos, _filteredTodos));
}


@override
int get hashCode => Object.hash(runtimeType,uncompletedTodosCount,filter,const DeepCollectionEquality().hash(_filteredTodos));

@override
String toString() {
  return 'RiverpodGettingStartedUiState(uncompletedTodosCount: $uncompletedTodosCount, filter: $filter, filteredTodos: $filteredTodos)';
}


}

/// @nodoc
abstract mixin class _$RiverpodGettingStartedUiStateCopyWith<$Res> implements $RiverpodGettingStartedUiStateCopyWith<$Res> {
  factory _$RiverpodGettingStartedUiStateCopyWith(_RiverpodGettingStartedUiState value, $Res Function(_RiverpodGettingStartedUiState) _then) = __$RiverpodGettingStartedUiStateCopyWithImpl;
@override @useResult
$Res call({
 int uncompletedTodosCount, TodoListFilter filter, List<Todo> filteredTodos
});




}
/// @nodoc
class __$RiverpodGettingStartedUiStateCopyWithImpl<$Res>
    implements _$RiverpodGettingStartedUiStateCopyWith<$Res> {
  __$RiverpodGettingStartedUiStateCopyWithImpl(this._self, this._then);

  final _RiverpodGettingStartedUiState _self;
  final $Res Function(_RiverpodGettingStartedUiState) _then;

/// Create a copy of RiverpodGettingStartedUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uncompletedTodosCount = null,Object? filter = null,Object? filteredTodos = null,}) {
  return _then(_RiverpodGettingStartedUiState(
uncompletedTodosCount: null == uncompletedTodosCount ? _self.uncompletedTodosCount : uncompletedTodosCount // ignore: cast_nullable_to_non_nullable
as int,filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as TodoListFilter,filteredTodos: null == filteredTodos ? _self._filteredTodos : filteredTodos // ignore: cast_nullable_to_non_nullable
as List<Todo>,
  ));
}


}

// dart format on
