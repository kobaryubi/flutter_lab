// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'joke.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Joke {

 String get type; String get setup; String get punchline; int get id;
/// Create a copy of Joke
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JokeCopyWith<Joke> get copyWith => _$JokeCopyWithImpl<Joke>(this as Joke, _$identity);

  /// Serializes this Joke to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Joke&&(identical(other.type, type) || other.type == type)&&(identical(other.setup, setup) || other.setup == setup)&&(identical(other.punchline, punchline) || other.punchline == punchline)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,setup,punchline,id);

@override
String toString() {
  return 'Joke(type: $type, setup: $setup, punchline: $punchline, id: $id)';
}


}

/// @nodoc
abstract mixin class $JokeCopyWith<$Res>  {
  factory $JokeCopyWith(Joke value, $Res Function(Joke) _then) = _$JokeCopyWithImpl;
@useResult
$Res call({
 String type, String setup, String punchline, int id
});




}
/// @nodoc
class _$JokeCopyWithImpl<$Res>
    implements $JokeCopyWith<$Res> {
  _$JokeCopyWithImpl(this._self, this._then);

  final Joke _self;
  final $Res Function(Joke) _then;

/// Create a copy of Joke
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? setup = null,Object? punchline = null,Object? id = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,setup: null == setup ? _self.setup : setup // ignore: cast_nullable_to_non_nullable
as String,punchline: null == punchline ? _self.punchline : punchline // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Joke].
extension JokePatterns on Joke {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Joke value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Joke() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Joke value)  $default,){
final _that = this;
switch (_that) {
case _Joke():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Joke value)?  $default,){
final _that = this;
switch (_that) {
case _Joke() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String setup,  String punchline,  int id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Joke() when $default != null:
return $default(_that.type,_that.setup,_that.punchline,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String setup,  String punchline,  int id)  $default,) {final _that = this;
switch (_that) {
case _Joke():
return $default(_that.type,_that.setup,_that.punchline,_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String setup,  String punchline,  int id)?  $default,) {final _that = this;
switch (_that) {
case _Joke() when $default != null:
return $default(_that.type,_that.setup,_that.punchline,_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Joke implements Joke {
  const _Joke({required this.type, required this.setup, required this.punchline, required this.id});
  factory _Joke.fromJson(Map<String, dynamic> json) => _$JokeFromJson(json);

@override final  String type;
@override final  String setup;
@override final  String punchline;
@override final  int id;

/// Create a copy of Joke
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JokeCopyWith<_Joke> get copyWith => __$JokeCopyWithImpl<_Joke>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JokeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Joke&&(identical(other.type, type) || other.type == type)&&(identical(other.setup, setup) || other.setup == setup)&&(identical(other.punchline, punchline) || other.punchline == punchline)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,setup,punchline,id);

@override
String toString() {
  return 'Joke(type: $type, setup: $setup, punchline: $punchline, id: $id)';
}


}

/// @nodoc
abstract mixin class _$JokeCopyWith<$Res> implements $JokeCopyWith<$Res> {
  factory _$JokeCopyWith(_Joke value, $Res Function(_Joke) _then) = __$JokeCopyWithImpl;
@override @useResult
$Res call({
 String type, String setup, String punchline, int id
});




}
/// @nodoc
class __$JokeCopyWithImpl<$Res>
    implements _$JokeCopyWith<$Res> {
  __$JokeCopyWithImpl(this._self, this._then);

  final _Joke _self;
  final $Res Function(_Joke) _then;

/// Create a copy of Joke
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? setup = null,Object? punchline = null,Object? id = null,}) {
  return _then(_Joke(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,setup: null == setup ? _self.setup : setup // ignore: cast_nullable_to_non_nullable
as String,punchline: null == punchline ? _self.punchline : punchline // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
