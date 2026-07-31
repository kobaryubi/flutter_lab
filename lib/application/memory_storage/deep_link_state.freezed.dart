// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deep_link_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DeepLinkState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeepLinkState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeepLinkState()';
}


}

/// @nodoc
class $DeepLinkStateCopyWith<$Res>  {
$DeepLinkStateCopyWith(DeepLinkState _, $Res Function(DeepLinkState) __);
}


/// Adds pattern-matching-related methods to [DeepLinkState].
extension DeepLinkStatePatterns on DeepLinkState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NoLink value)?  noLink,TResult Function( Validating value)?  validating,TResult Function( Ready value)?  ready,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NoLink() when noLink != null:
return noLink(_that);case Validating() when validating != null:
return validating(_that);case Ready() when ready != null:
return ready(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NoLink value)  noLink,required TResult Function( Validating value)  validating,required TResult Function( Ready value)  ready,}){
final _that = this;
switch (_that) {
case NoLink():
return noLink(_that);case Validating():
return validating(_that);case Ready():
return ready(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NoLink value)?  noLink,TResult? Function( Validating value)?  validating,TResult? Function( Ready value)?  ready,}){
final _that = this;
switch (_that) {
case NoLink() when noLink != null:
return noLink(_that);case Validating() when validating != null:
return validating(_that);case Ready() when ready != null:
return ready(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  noLink,TResult Function( Future<Uri?> result)?  validating,TResult Function( Uri link)?  ready,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NoLink() when noLink != null:
return noLink();case Validating() when validating != null:
return validating(_that.result);case Ready() when ready != null:
return ready(_that.link);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  noLink,required TResult Function( Future<Uri?> result)  validating,required TResult Function( Uri link)  ready,}) {final _that = this;
switch (_that) {
case NoLink():
return noLink();case Validating():
return validating(_that.result);case Ready():
return ready(_that.link);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  noLink,TResult? Function( Future<Uri?> result)?  validating,TResult? Function( Uri link)?  ready,}) {final _that = this;
switch (_that) {
case NoLink() when noLink != null:
return noLink();case Validating() when validating != null:
return validating(_that.result);case Ready() when ready != null:
return ready(_that.link);case _:
  return null;

}
}

}

/// @nodoc


class NoLink implements DeepLinkState {
  const NoLink();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoLink);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeepLinkState.noLink()';
}


}




/// @nodoc


class Validating implements DeepLinkState {
  const Validating({required this.result});
  

 final  Future<Uri?> result;

/// Create a copy of DeepLinkState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidatingCopyWith<Validating> get copyWith => _$ValidatingCopyWithImpl<Validating>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Validating&&(identical(other.result, result) || other.result == result));
}


@override
int get hashCode => Object.hash(runtimeType,result);

@override
String toString() {
  return 'DeepLinkState.validating(result: $result)';
}


}

/// @nodoc
abstract mixin class $ValidatingCopyWith<$Res> implements $DeepLinkStateCopyWith<$Res> {
  factory $ValidatingCopyWith(Validating value, $Res Function(Validating) _then) = _$ValidatingCopyWithImpl;
@useResult
$Res call({
 Future<Uri?> result
});




}
/// @nodoc
class _$ValidatingCopyWithImpl<$Res>
    implements $ValidatingCopyWith<$Res> {
  _$ValidatingCopyWithImpl(this._self, this._then);

  final Validating _self;
  final $Res Function(Validating) _then;

/// Create a copy of DeepLinkState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? result = null,}) {
  return _then(Validating(
result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as Future<Uri?>,
  ));
}


}

/// @nodoc


class Ready implements DeepLinkState {
  const Ready({required this.link});
  

 final  Uri link;

/// Create a copy of DeepLinkState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReadyCopyWith<Ready> get copyWith => _$ReadyCopyWithImpl<Ready>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Ready&&(identical(other.link, link) || other.link == link));
}


@override
int get hashCode => Object.hash(runtimeType,link);

@override
String toString() {
  return 'DeepLinkState.ready(link: $link)';
}


}

/// @nodoc
abstract mixin class $ReadyCopyWith<$Res> implements $DeepLinkStateCopyWith<$Res> {
  factory $ReadyCopyWith(Ready value, $Res Function(Ready) _then) = _$ReadyCopyWithImpl;
@useResult
$Res call({
 Uri link
});




}
/// @nodoc
class _$ReadyCopyWithImpl<$Res>
    implements $ReadyCopyWith<$Res> {
  _$ReadyCopyWithImpl(this._self, this._then);

  final Ready _self;
  final $Res Function(Ready) _then;

/// Create a copy of DeepLinkState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? link = null,}) {
  return _then(Ready(
link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as Uri,
  ));
}


}

// dart format on
