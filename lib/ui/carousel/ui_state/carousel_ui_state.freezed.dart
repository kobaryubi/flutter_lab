// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carousel_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CarouselUiState {

/// Image URLs returned by the image-list API. `null` before the first
/// fetch, which fires when the screen comes to the front.
 AsyncValue<List<Uri>>? get imageUrls;/// Image bytes prefetched once by the view model, keyed by URL.
///
/// Holding the bytes here (instead of fetching inside each slide's
/// build) is what prevents a network request per slide change.
 AsyncValue<Map<Uri, Uint8List>>? get prefetchedImages;/// Number of image HTTP requests issued since the screen appeared,
/// displayed so the refetch-per-slide problem is observable.
 int get imageRequestCount;
/// Create a copy of CarouselUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CarouselUiStateCopyWith<CarouselUiState> get copyWith => _$CarouselUiStateCopyWithImpl<CarouselUiState>(this as CarouselUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CarouselUiState&&(identical(other.imageUrls, imageUrls) || other.imageUrls == imageUrls)&&(identical(other.prefetchedImages, prefetchedImages) || other.prefetchedImages == prefetchedImages)&&(identical(other.imageRequestCount, imageRequestCount) || other.imageRequestCount == imageRequestCount));
}


@override
int get hashCode => Object.hash(runtimeType,imageUrls,prefetchedImages,imageRequestCount);

@override
String toString() {
  return 'CarouselUiState(imageUrls: $imageUrls, prefetchedImages: $prefetchedImages, imageRequestCount: $imageRequestCount)';
}


}

/// @nodoc
abstract mixin class $CarouselUiStateCopyWith<$Res>  {
  factory $CarouselUiStateCopyWith(CarouselUiState value, $Res Function(CarouselUiState) _then) = _$CarouselUiStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<List<Uri>>? imageUrls, AsyncValue<Map<Uri, Uint8List>>? prefetchedImages, int imageRequestCount
});




}
/// @nodoc
class _$CarouselUiStateCopyWithImpl<$Res>
    implements $CarouselUiStateCopyWith<$Res> {
  _$CarouselUiStateCopyWithImpl(this._self, this._then);

  final CarouselUiState _self;
  final $Res Function(CarouselUiState) _then;

/// Create a copy of CarouselUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageUrls = freezed,Object? prefetchedImages = freezed,Object? imageRequestCount = null,}) {
  return _then(_self.copyWith(
imageUrls: freezed == imageUrls ? _self.imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as AsyncValue<List<Uri>>?,prefetchedImages: freezed == prefetchedImages ? _self.prefetchedImages : prefetchedImages // ignore: cast_nullable_to_non_nullable
as AsyncValue<Map<Uri, Uint8List>>?,imageRequestCount: null == imageRequestCount ? _self.imageRequestCount : imageRequestCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CarouselUiState].
extension CarouselUiStatePatterns on CarouselUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CarouselUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CarouselUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CarouselUiState value)  $default,){
final _that = this;
switch (_that) {
case _CarouselUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CarouselUiState value)?  $default,){
final _that = this;
switch (_that) {
case _CarouselUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<List<Uri>>? imageUrls,  AsyncValue<Map<Uri, Uint8List>>? prefetchedImages,  int imageRequestCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CarouselUiState() when $default != null:
return $default(_that.imageUrls,_that.prefetchedImages,_that.imageRequestCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<List<Uri>>? imageUrls,  AsyncValue<Map<Uri, Uint8List>>? prefetchedImages,  int imageRequestCount)  $default,) {final _that = this;
switch (_that) {
case _CarouselUiState():
return $default(_that.imageUrls,_that.prefetchedImages,_that.imageRequestCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<List<Uri>>? imageUrls,  AsyncValue<Map<Uri, Uint8List>>? prefetchedImages,  int imageRequestCount)?  $default,) {final _that = this;
switch (_that) {
case _CarouselUiState() when $default != null:
return $default(_that.imageUrls,_that.prefetchedImages,_that.imageRequestCount);case _:
  return null;

}
}

}

/// @nodoc


class _CarouselUiState implements CarouselUiState {
  const _CarouselUiState({this.imageUrls, this.prefetchedImages, this.imageRequestCount = 0});
  

/// Image URLs returned by the image-list API. `null` before the first
/// fetch, which fires when the screen comes to the front.
@override final  AsyncValue<List<Uri>>? imageUrls;
/// Image bytes prefetched once by the view model, keyed by URL.
///
/// Holding the bytes here (instead of fetching inside each slide's
/// build) is what prevents a network request per slide change.
@override final  AsyncValue<Map<Uri, Uint8List>>? prefetchedImages;
/// Number of image HTTP requests issued since the screen appeared,
/// displayed so the refetch-per-slide problem is observable.
@override@JsonKey() final  int imageRequestCount;

/// Create a copy of CarouselUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CarouselUiStateCopyWith<_CarouselUiState> get copyWith => __$CarouselUiStateCopyWithImpl<_CarouselUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CarouselUiState&&(identical(other.imageUrls, imageUrls) || other.imageUrls == imageUrls)&&(identical(other.prefetchedImages, prefetchedImages) || other.prefetchedImages == prefetchedImages)&&(identical(other.imageRequestCount, imageRequestCount) || other.imageRequestCount == imageRequestCount));
}


@override
int get hashCode => Object.hash(runtimeType,imageUrls,prefetchedImages,imageRequestCount);

@override
String toString() {
  return 'CarouselUiState(imageUrls: $imageUrls, prefetchedImages: $prefetchedImages, imageRequestCount: $imageRequestCount)';
}


}

/// @nodoc
abstract mixin class _$CarouselUiStateCopyWith<$Res> implements $CarouselUiStateCopyWith<$Res> {
  factory _$CarouselUiStateCopyWith(_CarouselUiState value, $Res Function(_CarouselUiState) _then) = __$CarouselUiStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<List<Uri>>? imageUrls, AsyncValue<Map<Uri, Uint8List>>? prefetchedImages, int imageRequestCount
});




}
/// @nodoc
class __$CarouselUiStateCopyWithImpl<$Res>
    implements _$CarouselUiStateCopyWith<$Res> {
  __$CarouselUiStateCopyWithImpl(this._self, this._then);

  final _CarouselUiState _self;
  final $Res Function(_CarouselUiState) _then;

/// Create a copy of CarouselUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageUrls = freezed,Object? prefetchedImages = freezed,Object? imageRequestCount = null,}) {
  return _then(_CarouselUiState(
imageUrls: freezed == imageUrls ? _self.imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as AsyncValue<List<Uri>>?,prefetchedImages: freezed == prefetchedImages ? _self.prefetchedImages : prefetchedImages // ignore: cast_nullable_to_non_nullable
as AsyncValue<Map<Uri, Uint8List>>?,imageRequestCount: null == imageRequestCount ? _self.imageRequestCount : imageRequestCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
