// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pet_cache_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PetCacheUiState {

 AsyncValue<List<Pet>>? get pets;
/// Create a copy of PetCacheUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PetCacheUiStateCopyWith<PetCacheUiState> get copyWith => _$PetCacheUiStateCopyWithImpl<PetCacheUiState>(this as PetCacheUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PetCacheUiState&&(identical(other.pets, pets) || other.pets == pets));
}


@override
int get hashCode => Object.hash(runtimeType,pets);

@override
String toString() {
  return 'PetCacheUiState(pets: $pets)';
}


}

/// @nodoc
abstract mixin class $PetCacheUiStateCopyWith<$Res>  {
  factory $PetCacheUiStateCopyWith(PetCacheUiState value, $Res Function(PetCacheUiState) _then) = _$PetCacheUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<List<Pet>>? pets
});




}
/// @nodoc
class _$PetCacheUiStateCopyWithImpl<$Res>
    implements $PetCacheUiStateCopyWith<$Res> {
  _$PetCacheUiStateCopyWithImpl(this._self, this._then);

  final PetCacheUiState _self;
  final $Res Function(PetCacheUiState) _then;

/// Create a copy of PetCacheUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pets = freezed,}) {
  return _then(_self.copyWith(
pets: freezed == pets ? _self.pets : pets // ignore: cast_nullable_to_non_nullable
as AsyncValue<List<Pet>>?,
  ));
}

}


/// Adds pattern-matching-related methods to [PetCacheUiState].
extension PetCacheUiStatePatterns on PetCacheUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PetCacheUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PetCacheUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PetCacheUiState value)  $default,){
final _that = this;
switch (_that) {
case _PetCacheUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PetCacheUiState value)?  $default,){
final _that = this;
switch (_that) {
case _PetCacheUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<List<Pet>>? pets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PetCacheUiState() when $default != null:
return $default(_that.pets);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<List<Pet>>? pets)  $default,) {final _that = this;
switch (_that) {
case _PetCacheUiState():
return $default(_that.pets);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<List<Pet>>? pets)?  $default,) {final _that = this;
switch (_that) {
case _PetCacheUiState() when $default != null:
return $default(_that.pets);case _:
  return null;

}
}

}

/// @nodoc


class _PetCacheUiState implements PetCacheUiState {
  const _PetCacheUiState({this.pets});
  

@override final  AsyncValue<List<Pet>>? pets;

/// Create a copy of PetCacheUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PetCacheUiStateCopyWith<_PetCacheUiState> get copyWith => __$PetCacheUiStateCopyWithImpl<_PetCacheUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PetCacheUiState&&(identical(other.pets, pets) || other.pets == pets));
}


@override
int get hashCode => Object.hash(runtimeType,pets);

@override
String toString() {
  return 'PetCacheUiState(pets: $pets)';
}


}

/// @nodoc
abstract mixin class _$PetCacheUiStateCopyWith<$Res> implements $PetCacheUiStateCopyWith<$Res> {
  factory _$PetCacheUiStateCopyWith(_PetCacheUiState value, $Res Function(_PetCacheUiState) _then) = __$PetCacheUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<List<Pet>>? pets
});




}
/// @nodoc
class __$PetCacheUiStateCopyWithImpl<$Res>
    implements _$PetCacheUiStateCopyWith<$Res> {
  __$PetCacheUiStateCopyWithImpl(this._self, this._then);

  final _PetCacheUiState _self;
  final $Res Function(_PetCacheUiState) _then;

/// Create a copy of PetCacheUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pets = freezed,}) {
  return _then(_PetCacheUiState(
pets: freezed == pets ? _self.pets : pets // ignore: cast_nullable_to_non_nullable
as AsyncValue<List<Pet>>?,
  ));
}


}

// dart format on
