// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'swipe_tabs_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SwipeTabsUiState {

 AsyncValue<List<String>>? get items;
/// Create a copy of SwipeTabsUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SwipeTabsUiStateCopyWith<SwipeTabsUiState> get copyWith => _$SwipeTabsUiStateCopyWithImpl<SwipeTabsUiState>(this as SwipeTabsUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SwipeTabsUiState&&(identical(other.items, items) || other.items == items));
}


@override
int get hashCode => Object.hash(runtimeType,items);

@override
String toString() {
  return 'SwipeTabsUiState(items: $items)';
}


}

/// @nodoc
abstract mixin class $SwipeTabsUiStateCopyWith<$Res>  {
  factory $SwipeTabsUiStateCopyWith(SwipeTabsUiState value, $Res Function(SwipeTabsUiState) _then) = _$SwipeTabsUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<List<String>>? items
});




}
/// @nodoc
class _$SwipeTabsUiStateCopyWithImpl<$Res>
    implements $SwipeTabsUiStateCopyWith<$Res> {
  _$SwipeTabsUiStateCopyWithImpl(this._self, this._then);

  final SwipeTabsUiState _self;
  final $Res Function(SwipeTabsUiState) _then;

/// Create a copy of SwipeTabsUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = freezed,}) {
  return _then(_self.copyWith(
items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as AsyncValue<List<String>>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SwipeTabsUiState].
extension SwipeTabsUiStatePatterns on SwipeTabsUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SwipeTabsUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SwipeTabsUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SwipeTabsUiState value)  $default,){
final _that = this;
switch (_that) {
case _SwipeTabsUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SwipeTabsUiState value)?  $default,){
final _that = this;
switch (_that) {
case _SwipeTabsUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<List<String>>? items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SwipeTabsUiState() when $default != null:
return $default(_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<List<String>>? items)  $default,) {final _that = this;
switch (_that) {
case _SwipeTabsUiState():
return $default(_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<List<String>>? items)?  $default,) {final _that = this;
switch (_that) {
case _SwipeTabsUiState() when $default != null:
return $default(_that.items);case _:
  return null;

}
}

}

/// @nodoc


class _SwipeTabsUiState implements SwipeTabsUiState {
  const _SwipeTabsUiState({this.items});
  

@override final  AsyncValue<List<String>>? items;

/// Create a copy of SwipeTabsUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SwipeTabsUiStateCopyWith<_SwipeTabsUiState> get copyWith => __$SwipeTabsUiStateCopyWithImpl<_SwipeTabsUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SwipeTabsUiState&&(identical(other.items, items) || other.items == items));
}


@override
int get hashCode => Object.hash(runtimeType,items);

@override
String toString() {
  return 'SwipeTabsUiState(items: $items)';
}


}

/// @nodoc
abstract mixin class _$SwipeTabsUiStateCopyWith<$Res> implements $SwipeTabsUiStateCopyWith<$Res> {
  factory _$SwipeTabsUiStateCopyWith(_SwipeTabsUiState value, $Res Function(_SwipeTabsUiState) _then) = __$SwipeTabsUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<List<String>>? items
});




}
/// @nodoc
class __$SwipeTabsUiStateCopyWithImpl<$Res>
    implements _$SwipeTabsUiStateCopyWith<$Res> {
  __$SwipeTabsUiStateCopyWithImpl(this._self, this._then);

  final _SwipeTabsUiState _self;
  final $Res Function(_SwipeTabsUiState) _then;

/// Create a copy of SwipeTabsUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = freezed,}) {
  return _then(_SwipeTabsUiState(
items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as AsyncValue<List<String>>?,
  ));
}


}

// dart format on
