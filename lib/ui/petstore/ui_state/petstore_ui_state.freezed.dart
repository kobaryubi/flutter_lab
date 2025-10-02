// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'petstore_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PetStoreUiState {

 AsyncValue<List<Pet>>? get pets;
/// Create a copy of PetStoreUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PetStoreUiStateCopyWith<PetStoreUiState> get copyWith => _$PetStoreUiStateCopyWithImpl<PetStoreUiState>(this as PetStoreUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PetStoreUiState&&(identical(other.pets, pets) || other.pets == pets));
}


@override
int get hashCode => Object.hash(runtimeType,pets);

@override
String toString() {
  return 'PetStoreUiState(pets: $pets)';
}


}

/// @nodoc
abstract mixin class $PetStoreUiStateCopyWith<$Res>  {
  factory $PetStoreUiStateCopyWith(PetStoreUiState value, $Res Function(PetStoreUiState) _then) = _$PetStoreUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<List<Pet>>? pets
});




}
/// @nodoc
class _$PetStoreUiStateCopyWithImpl<$Res>
    implements $PetStoreUiStateCopyWith<$Res> {
  _$PetStoreUiStateCopyWithImpl(this._self, this._then);

  final PetStoreUiState _self;
  final $Res Function(PetStoreUiState) _then;

/// Create a copy of PetStoreUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pets = freezed,}) {
  return _then(_self.copyWith(
pets: freezed == pets ? _self.pets : pets // ignore: cast_nullable_to_non_nullable
as AsyncValue<List<Pet>>?,
  ));
}

}


/// Adds pattern-matching-related methods to [PetStoreUiState].
extension PetStoreUiStatePatterns on PetStoreUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PetStoreUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PetStoreUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PetStoreUiState value)  $default,){
final _that = this;
switch (_that) {
case _PetStoreUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PetStoreUiState value)?  $default,){
final _that = this;
switch (_that) {
case _PetStoreUiState() when $default != null:
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
case _PetStoreUiState() when $default != null:
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
case _PetStoreUiState():
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
case _PetStoreUiState() when $default != null:
return $default(_that.pets);case _:
  return null;

}
}

}

/// @nodoc


class _PetStoreUiState implements PetStoreUiState {
  const _PetStoreUiState({required this.pets});
  

@override final  AsyncValue<List<Pet>>? pets;

/// Create a copy of PetStoreUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PetStoreUiStateCopyWith<_PetStoreUiState> get copyWith => __$PetStoreUiStateCopyWithImpl<_PetStoreUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PetStoreUiState&&(identical(other.pets, pets) || other.pets == pets));
}


@override
int get hashCode => Object.hash(runtimeType,pets);

@override
String toString() {
  return 'PetStoreUiState(pets: $pets)';
}


}

/// @nodoc
abstract mixin class _$PetStoreUiStateCopyWith<$Res> implements $PetStoreUiStateCopyWith<$Res> {
  factory _$PetStoreUiStateCopyWith(_PetStoreUiState value, $Res Function(_PetStoreUiState) _then) = __$PetStoreUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<List<Pet>>? pets
});




}
/// @nodoc
class __$PetStoreUiStateCopyWithImpl<$Res>
    implements _$PetStoreUiStateCopyWith<$Res> {
  __$PetStoreUiStateCopyWithImpl(this._self, this._then);

  final _PetStoreUiState _self;
  final $Res Function(_PetStoreUiState) _then;

/// Create a copy of PetStoreUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pets = freezed,}) {
  return _then(_PetStoreUiState(
pets: freezed == pets ? _self.pets : pets // ignore: cast_nullable_to_non_nullable
as AsyncValue<List<Pet>>?,
  ));
}


}

// dart format on
