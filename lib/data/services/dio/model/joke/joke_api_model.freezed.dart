// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'joke_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JokeApiModel {

 String get type; String get setup; String get punchline; int get id;
/// Create a copy of JokeApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JokeApiModelCopyWith<JokeApiModel> get copyWith => _$JokeApiModelCopyWithImpl<JokeApiModel>(this as JokeApiModel, _$identity);

  /// Serializes this JokeApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JokeApiModel&&(identical(other.type, type) || other.type == type)&&(identical(other.setup, setup) || other.setup == setup)&&(identical(other.punchline, punchline) || other.punchline == punchline)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,setup,punchline,id);

@override
String toString() {
  return 'JokeApiModel(type: $type, setup: $setup, punchline: $punchline, id: $id)';
}


}

/// @nodoc
abstract mixin class $JokeApiModelCopyWith<$Res>  {
  factory $JokeApiModelCopyWith(JokeApiModel value, $Res Function(JokeApiModel) _then) = _$JokeApiModelCopyWithImpl;
@useResult
$Res call({
 String type, String setup, String punchline, int id
});




}
/// @nodoc
class _$JokeApiModelCopyWithImpl<$Res>
    implements $JokeApiModelCopyWith<$Res> {
  _$JokeApiModelCopyWithImpl(this._self, this._then);

  final JokeApiModel _self;
  final $Res Function(JokeApiModel) _then;

/// Create a copy of JokeApiModel
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


/// Adds pattern-matching-related methods to [JokeApiModel].
extension JokeApiModelPatterns on JokeApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JokeApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JokeApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JokeApiModel value)  $default,){
final _that = this;
switch (_that) {
case _JokeApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JokeApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _JokeApiModel() when $default != null:
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
case _JokeApiModel() when $default != null:
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
case _JokeApiModel():
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
case _JokeApiModel() when $default != null:
return $default(_that.type,_that.setup,_that.punchline,_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JokeApiModel implements JokeApiModel {
  const _JokeApiModel({required this.type, required this.setup, required this.punchline, required this.id});
  factory _JokeApiModel.fromJson(Map<String, dynamic> json) => _$JokeApiModelFromJson(json);

@override final  String type;
@override final  String setup;
@override final  String punchline;
@override final  int id;

/// Create a copy of JokeApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JokeApiModelCopyWith<_JokeApiModel> get copyWith => __$JokeApiModelCopyWithImpl<_JokeApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JokeApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JokeApiModel&&(identical(other.type, type) || other.type == type)&&(identical(other.setup, setup) || other.setup == setup)&&(identical(other.punchline, punchline) || other.punchline == punchline)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,setup,punchline,id);

@override
String toString() {
  return 'JokeApiModel(type: $type, setup: $setup, punchline: $punchline, id: $id)';
}


}

/// @nodoc
abstract mixin class _$JokeApiModelCopyWith<$Res> implements $JokeApiModelCopyWith<$Res> {
  factory _$JokeApiModelCopyWith(_JokeApiModel value, $Res Function(_JokeApiModel) _then) = __$JokeApiModelCopyWithImpl;
@override @useResult
$Res call({
 String type, String setup, String punchline, int id
});




}
/// @nodoc
class __$JokeApiModelCopyWithImpl<$Res>
    implements _$JokeApiModelCopyWith<$Res> {
  __$JokeApiModelCopyWithImpl(this._self, this._then);

  final _JokeApiModel _self;
  final $Res Function(_JokeApiModel) _then;

/// Create a copy of JokeApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? setup = null,Object? punchline = null,Object? id = null,}) {
  return _then(_JokeApiModel(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,setup: null == setup ? _self.setup : setup // ignore: cast_nullable_to_non_nullable
as String,punchline: null == punchline ? _self.punchline : punchline // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
