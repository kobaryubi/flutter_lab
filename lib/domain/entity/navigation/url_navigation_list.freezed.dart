// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'url_navigation_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UrlNavigationList {

 List<String> get blackList; List<String> get whiteList;
/// Create a copy of UrlNavigationList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UrlNavigationListCopyWith<UrlNavigationList> get copyWith => _$UrlNavigationListCopyWithImpl<UrlNavigationList>(this as UrlNavigationList, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UrlNavigationList&&const DeepCollectionEquality().equals(other.blackList, blackList)&&const DeepCollectionEquality().equals(other.whiteList, whiteList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(blackList),const DeepCollectionEquality().hash(whiteList));

@override
String toString() {
  return 'UrlNavigationList(blackList: $blackList, whiteList: $whiteList)';
}


}

/// @nodoc
abstract mixin class $UrlNavigationListCopyWith<$Res>  {
  factory $UrlNavigationListCopyWith(UrlNavigationList value, $Res Function(UrlNavigationList) _then) = _$UrlNavigationListCopyWithImpl;
@useResult
$Res call({
 List<String> blackList, List<String> whiteList
});




}
/// @nodoc
class _$UrlNavigationListCopyWithImpl<$Res>
    implements $UrlNavigationListCopyWith<$Res> {
  _$UrlNavigationListCopyWithImpl(this._self, this._then);

  final UrlNavigationList _self;
  final $Res Function(UrlNavigationList) _then;

/// Create a copy of UrlNavigationList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? blackList = null,Object? whiteList = null,}) {
  return _then(_self.copyWith(
blackList: null == blackList ? _self.blackList : blackList // ignore: cast_nullable_to_non_nullable
as List<String>,whiteList: null == whiteList ? _self.whiteList : whiteList // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [UrlNavigationList].
extension UrlNavigationListPatterns on UrlNavigationList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UrlNavigationList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UrlNavigationList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UrlNavigationList value)  $default,){
final _that = this;
switch (_that) {
case _UrlNavigationList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UrlNavigationList value)?  $default,){
final _that = this;
switch (_that) {
case _UrlNavigationList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> blackList,  List<String> whiteList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UrlNavigationList() when $default != null:
return $default(_that.blackList,_that.whiteList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> blackList,  List<String> whiteList)  $default,) {final _that = this;
switch (_that) {
case _UrlNavigationList():
return $default(_that.blackList,_that.whiteList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> blackList,  List<String> whiteList)?  $default,) {final _that = this;
switch (_that) {
case _UrlNavigationList() when $default != null:
return $default(_that.blackList,_that.whiteList);case _:
  return null;

}
}

}

/// @nodoc


class _UrlNavigationList extends UrlNavigationList {
  const _UrlNavigationList({required final  List<String> blackList, required final  List<String> whiteList}): _blackList = blackList,_whiteList = whiteList,super._();
  

 final  List<String> _blackList;
@override List<String> get blackList {
  if (_blackList is EqualUnmodifiableListView) return _blackList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_blackList);
}

 final  List<String> _whiteList;
@override List<String> get whiteList {
  if (_whiteList is EqualUnmodifiableListView) return _whiteList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_whiteList);
}


/// Create a copy of UrlNavigationList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UrlNavigationListCopyWith<_UrlNavigationList> get copyWith => __$UrlNavigationListCopyWithImpl<_UrlNavigationList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UrlNavigationList&&const DeepCollectionEquality().equals(other._blackList, _blackList)&&const DeepCollectionEquality().equals(other._whiteList, _whiteList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_blackList),const DeepCollectionEquality().hash(_whiteList));

@override
String toString() {
  return 'UrlNavigationList(blackList: $blackList, whiteList: $whiteList)';
}


}

/// @nodoc
abstract mixin class _$UrlNavigationListCopyWith<$Res> implements $UrlNavigationListCopyWith<$Res> {
  factory _$UrlNavigationListCopyWith(_UrlNavigationList value, $Res Function(_UrlNavigationList) _then) = __$UrlNavigationListCopyWithImpl;
@override @useResult
$Res call({
 List<String> blackList, List<String> whiteList
});




}
/// @nodoc
class __$UrlNavigationListCopyWithImpl<$Res>
    implements _$UrlNavigationListCopyWith<$Res> {
  __$UrlNavigationListCopyWithImpl(this._self, this._then);

  final _UrlNavigationList _self;
  final $Res Function(_UrlNavigationList) _then;

/// Create a copy of UrlNavigationList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? blackList = null,Object? whiteList = null,}) {
  return _then(_UrlNavigationList(
blackList: null == blackList ? _self._blackList : blackList // ignore: cast_nullable_to_non_nullable
as List<String>,whiteList: null == whiteList ? _self._whiteList : whiteList // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
