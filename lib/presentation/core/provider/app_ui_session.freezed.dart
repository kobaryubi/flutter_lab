// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_ui_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppUiSession {

/// Set of screen names that have been viewed in this session.
 Set<String> get viewedScreens;
/// Create a copy of AppUiSession
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppUiSessionCopyWith<AppUiSession> get copyWith => _$AppUiSessionCopyWithImpl<AppUiSession>(this as AppUiSession, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppUiSession&&const DeepCollectionEquality().equals(other.viewedScreens, viewedScreens));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(viewedScreens));

@override
String toString() {
  return 'AppUiSession(viewedScreens: $viewedScreens)';
}


}

/// @nodoc
abstract mixin class $AppUiSessionCopyWith<$Res>  {
  factory $AppUiSessionCopyWith(AppUiSession value, $Res Function(AppUiSession) _then) = _$AppUiSessionCopyWithImpl;
@useResult
$Res call({
 Set<String> viewedScreens
});




}
/// @nodoc
class _$AppUiSessionCopyWithImpl<$Res>
    implements $AppUiSessionCopyWith<$Res> {
  _$AppUiSessionCopyWithImpl(this._self, this._then);

  final AppUiSession _self;
  final $Res Function(AppUiSession) _then;

/// Create a copy of AppUiSession
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? viewedScreens = null,}) {
  return _then(_self.copyWith(
viewedScreens: null == viewedScreens ? _self.viewedScreens : viewedScreens // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [AppUiSession].
extension AppUiSessionPatterns on AppUiSession {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppUiSession value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppUiSession() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppUiSession value)  $default,){
final _that = this;
switch (_that) {
case _AppUiSession():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppUiSession value)?  $default,){
final _that = this;
switch (_that) {
case _AppUiSession() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Set<String> viewedScreens)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppUiSession() when $default != null:
return $default(_that.viewedScreens);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Set<String> viewedScreens)  $default,) {final _that = this;
switch (_that) {
case _AppUiSession():
return $default(_that.viewedScreens);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Set<String> viewedScreens)?  $default,) {final _that = this;
switch (_that) {
case _AppUiSession() when $default != null:
return $default(_that.viewedScreens);case _:
  return null;

}
}

}

/// @nodoc


class _AppUiSession implements AppUiSession {
  const _AppUiSession({final  Set<String> viewedScreens = const {}}): _viewedScreens = viewedScreens;
  

/// Set of screen names that have been viewed in this session.
 final  Set<String> _viewedScreens;
/// Set of screen names that have been viewed in this session.
@override@JsonKey() Set<String> get viewedScreens {
  if (_viewedScreens is EqualUnmodifiableSetView) return _viewedScreens;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_viewedScreens);
}


/// Create a copy of AppUiSession
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppUiSessionCopyWith<_AppUiSession> get copyWith => __$AppUiSessionCopyWithImpl<_AppUiSession>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppUiSession&&const DeepCollectionEquality().equals(other._viewedScreens, _viewedScreens));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_viewedScreens));

@override
String toString() {
  return 'AppUiSession(viewedScreens: $viewedScreens)';
}


}

/// @nodoc
abstract mixin class _$AppUiSessionCopyWith<$Res> implements $AppUiSessionCopyWith<$Res> {
  factory _$AppUiSessionCopyWith(_AppUiSession value, $Res Function(_AppUiSession) _then) = __$AppUiSessionCopyWithImpl;
@override @useResult
$Res call({
 Set<String> viewedScreens
});




}
/// @nodoc
class __$AppUiSessionCopyWithImpl<$Res>
    implements _$AppUiSessionCopyWith<$Res> {
  __$AppUiSessionCopyWithImpl(this._self, this._then);

  final _AppUiSession _self;
  final $Res Function(_AppUiSession) _then;

/// Create a copy of AppUiSession
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? viewedScreens = null,}) {
  return _then(_AppUiSession(
viewedScreens: null == viewedScreens ? _self._viewedScreens : viewedScreens // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}


}

// dart format on
