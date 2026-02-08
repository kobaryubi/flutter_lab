// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'target_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TargetPerson {

 int get id; String get firstName; String get lastName; int get age; String get displayName; String get nickname;
/// Create a copy of TargetPerson
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TargetPersonCopyWith<TargetPerson> get copyWith => _$TargetPersonCopyWithImpl<TargetPerson>(this as TargetPerson, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TargetPerson&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.age, age) || other.age == age)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.nickname, nickname) || other.nickname == nickname));
}


@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,age,displayName,nickname);

@override
String toString() {
  return 'TargetPerson(id: $id, firstName: $firstName, lastName: $lastName, age: $age, displayName: $displayName, nickname: $nickname)';
}


}

/// @nodoc
abstract mixin class $TargetPersonCopyWith<$Res>  {
  factory $TargetPersonCopyWith(TargetPerson value, $Res Function(TargetPerson) _then) = _$TargetPersonCopyWithImpl;
@useResult
$Res call({
 int id, String firstName, String lastName, int age, String displayName, String nickname
});




}
/// @nodoc
class _$TargetPersonCopyWithImpl<$Res>
    implements $TargetPersonCopyWith<$Res> {
  _$TargetPersonCopyWithImpl(this._self, this._then);

  final TargetPerson _self;
  final $Res Function(TargetPerson) _then;

/// Create a copy of TargetPerson
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? age = null,Object? displayName = null,Object? nickname = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TargetPerson].
extension TargetPersonPatterns on TargetPerson {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TargetPerson value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TargetPerson() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TargetPerson value)  $default,){
final _that = this;
switch (_that) {
case _TargetPerson():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TargetPerson value)?  $default,){
final _that = this;
switch (_that) {
case _TargetPerson() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String firstName,  String lastName,  int age,  String displayName,  String nickname)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TargetPerson() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.age,_that.displayName,_that.nickname);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String firstName,  String lastName,  int age,  String displayName,  String nickname)  $default,) {final _that = this;
switch (_that) {
case _TargetPerson():
return $default(_that.id,_that.firstName,_that.lastName,_that.age,_that.displayName,_that.nickname);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String firstName,  String lastName,  int age,  String displayName,  String nickname)?  $default,) {final _that = this;
switch (_that) {
case _TargetPerson() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.age,_that.displayName,_that.nickname);case _:
  return null;

}
}

}

/// @nodoc


class _TargetPerson implements TargetPerson {
  const _TargetPerson({required this.id, required this.firstName, required this.lastName, required this.age, required this.displayName, required this.nickname});
  

@override final  int id;
@override final  String firstName;
@override final  String lastName;
@override final  int age;
@override final  String displayName;
@override final  String nickname;

/// Create a copy of TargetPerson
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TargetPersonCopyWith<_TargetPerson> get copyWith => __$TargetPersonCopyWithImpl<_TargetPerson>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TargetPerson&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.age, age) || other.age == age)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.nickname, nickname) || other.nickname == nickname));
}


@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,age,displayName,nickname);

@override
String toString() {
  return 'TargetPerson(id: $id, firstName: $firstName, lastName: $lastName, age: $age, displayName: $displayName, nickname: $nickname)';
}


}

/// @nodoc
abstract mixin class _$TargetPersonCopyWith<$Res> implements $TargetPersonCopyWith<$Res> {
  factory _$TargetPersonCopyWith(_TargetPerson value, $Res Function(_TargetPerson) _then) = __$TargetPersonCopyWithImpl;
@override @useResult
$Res call({
 int id, String firstName, String lastName, int age, String displayName, String nickname
});




}
/// @nodoc
class __$TargetPersonCopyWithImpl<$Res>
    implements _$TargetPersonCopyWith<$Res> {
  __$TargetPersonCopyWithImpl(this._self, this._then);

  final _TargetPerson _self;
  final $Res Function(_TargetPerson) _then;

/// Create a copy of TargetPerson
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? age = null,Object? displayName = null,Object? nickname = null,}) {
  return _then(_TargetPerson(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TargetAddress {

 String get street; String get city; String get zipCode;
/// Create a copy of TargetAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TargetAddressCopyWith<TargetAddress> get copyWith => _$TargetAddressCopyWithImpl<TargetAddress>(this as TargetAddress, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TargetAddress&&(identical(other.street, street) || other.street == street)&&(identical(other.city, city) || other.city == city)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode));
}


@override
int get hashCode => Object.hash(runtimeType,street,city,zipCode);

@override
String toString() {
  return 'TargetAddress(street: $street, city: $city, zipCode: $zipCode)';
}


}

/// @nodoc
abstract mixin class $TargetAddressCopyWith<$Res>  {
  factory $TargetAddressCopyWith(TargetAddress value, $Res Function(TargetAddress) _then) = _$TargetAddressCopyWithImpl;
@useResult
$Res call({
 String street, String city, String zipCode
});




}
/// @nodoc
class _$TargetAddressCopyWithImpl<$Res>
    implements $TargetAddressCopyWith<$Res> {
  _$TargetAddressCopyWithImpl(this._self, this._then);

  final TargetAddress _self;
  final $Res Function(TargetAddress) _then;

/// Create a copy of TargetAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? street = null,Object? city = null,Object? zipCode = null,}) {
  return _then(_self.copyWith(
street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TargetAddress].
extension TargetAddressPatterns on TargetAddress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TargetAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TargetAddress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TargetAddress value)  $default,){
final _that = this;
switch (_that) {
case _TargetAddress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TargetAddress value)?  $default,){
final _that = this;
switch (_that) {
case _TargetAddress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String street,  String city,  String zipCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TargetAddress() when $default != null:
return $default(_that.street,_that.city,_that.zipCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String street,  String city,  String zipCode)  $default,) {final _that = this;
switch (_that) {
case _TargetAddress():
return $default(_that.street,_that.city,_that.zipCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String street,  String city,  String zipCode)?  $default,) {final _that = this;
switch (_that) {
case _TargetAddress() when $default != null:
return $default(_that.street,_that.city,_that.zipCode);case _:
  return null;

}
}

}

/// @nodoc


class _TargetAddress implements TargetAddress {
  const _TargetAddress({required this.street, required this.city, required this.zipCode});
  

@override final  String street;
@override final  String city;
@override final  String zipCode;

/// Create a copy of TargetAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TargetAddressCopyWith<_TargetAddress> get copyWith => __$TargetAddressCopyWithImpl<_TargetAddress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TargetAddress&&(identical(other.street, street) || other.street == street)&&(identical(other.city, city) || other.city == city)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode));
}


@override
int get hashCode => Object.hash(runtimeType,street,city,zipCode);

@override
String toString() {
  return 'TargetAddress(street: $street, city: $city, zipCode: $zipCode)';
}


}

/// @nodoc
abstract mixin class _$TargetAddressCopyWith<$Res> implements $TargetAddressCopyWith<$Res> {
  factory _$TargetAddressCopyWith(_TargetAddress value, $Res Function(_TargetAddress) _then) = __$TargetAddressCopyWithImpl;
@override @useResult
$Res call({
 String street, String city, String zipCode
});




}
/// @nodoc
class __$TargetAddressCopyWithImpl<$Res>
    implements _$TargetAddressCopyWith<$Res> {
  __$TargetAddressCopyWithImpl(this._self, this._then);

  final _TargetAddress _self;
  final $Res Function(_TargetAddress) _then;

/// Create a copy of TargetAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? street = null,Object? city = null,Object? zipCode = null,}) {
  return _then(_TargetAddress(
street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TargetEmployee {

 String get name; TargetAddress get address; List<String> get skills; int get skillCount;
/// Create a copy of TargetEmployee
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TargetEmployeeCopyWith<TargetEmployee> get copyWith => _$TargetEmployeeCopyWithImpl<TargetEmployee>(this as TargetEmployee, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TargetEmployee&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other.skills, skills)&&(identical(other.skillCount, skillCount) || other.skillCount == skillCount));
}


@override
int get hashCode => Object.hash(runtimeType,name,address,const DeepCollectionEquality().hash(skills),skillCount);

@override
String toString() {
  return 'TargetEmployee(name: $name, address: $address, skills: $skills, skillCount: $skillCount)';
}


}

/// @nodoc
abstract mixin class $TargetEmployeeCopyWith<$Res>  {
  factory $TargetEmployeeCopyWith(TargetEmployee value, $Res Function(TargetEmployee) _then) = _$TargetEmployeeCopyWithImpl;
@useResult
$Res call({
 String name, TargetAddress address, List<String> skills, int skillCount
});


$TargetAddressCopyWith<$Res> get address;

}
/// @nodoc
class _$TargetEmployeeCopyWithImpl<$Res>
    implements $TargetEmployeeCopyWith<$Res> {
  _$TargetEmployeeCopyWithImpl(this._self, this._then);

  final TargetEmployee _self;
  final $Res Function(TargetEmployee) _then;

/// Create a copy of TargetEmployee
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? address = null,Object? skills = null,Object? skillCount = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as TargetAddress,skills: null == skills ? _self.skills : skills // ignore: cast_nullable_to_non_nullable
as List<String>,skillCount: null == skillCount ? _self.skillCount : skillCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of TargetEmployee
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TargetAddressCopyWith<$Res> get address {
  
  return $TargetAddressCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}


/// Adds pattern-matching-related methods to [TargetEmployee].
extension TargetEmployeePatterns on TargetEmployee {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TargetEmployee value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TargetEmployee() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TargetEmployee value)  $default,){
final _that = this;
switch (_that) {
case _TargetEmployee():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TargetEmployee value)?  $default,){
final _that = this;
switch (_that) {
case _TargetEmployee() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  TargetAddress address,  List<String> skills,  int skillCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TargetEmployee() when $default != null:
return $default(_that.name,_that.address,_that.skills,_that.skillCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  TargetAddress address,  List<String> skills,  int skillCount)  $default,) {final _that = this;
switch (_that) {
case _TargetEmployee():
return $default(_that.name,_that.address,_that.skills,_that.skillCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  TargetAddress address,  List<String> skills,  int skillCount)?  $default,) {final _that = this;
switch (_that) {
case _TargetEmployee() when $default != null:
return $default(_that.name,_that.address,_that.skills,_that.skillCount);case _:
  return null;

}
}

}

/// @nodoc


class _TargetEmployee implements TargetEmployee {
  const _TargetEmployee({required this.name, required this.address, required final  List<String> skills, required this.skillCount}): _skills = skills;
  

@override final  String name;
@override final  TargetAddress address;
 final  List<String> _skills;
@override List<String> get skills {
  if (_skills is EqualUnmodifiableListView) return _skills;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_skills);
}

@override final  int skillCount;

/// Create a copy of TargetEmployee
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TargetEmployeeCopyWith<_TargetEmployee> get copyWith => __$TargetEmployeeCopyWithImpl<_TargetEmployee>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TargetEmployee&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other._skills, _skills)&&(identical(other.skillCount, skillCount) || other.skillCount == skillCount));
}


@override
int get hashCode => Object.hash(runtimeType,name,address,const DeepCollectionEquality().hash(_skills),skillCount);

@override
String toString() {
  return 'TargetEmployee(name: $name, address: $address, skills: $skills, skillCount: $skillCount)';
}


}

/// @nodoc
abstract mixin class _$TargetEmployeeCopyWith<$Res> implements $TargetEmployeeCopyWith<$Res> {
  factory _$TargetEmployeeCopyWith(_TargetEmployee value, $Res Function(_TargetEmployee) _then) = __$TargetEmployeeCopyWithImpl;
@override @useResult
$Res call({
 String name, TargetAddress address, List<String> skills, int skillCount
});


@override $TargetAddressCopyWith<$Res> get address;

}
/// @nodoc
class __$TargetEmployeeCopyWithImpl<$Res>
    implements _$TargetEmployeeCopyWith<$Res> {
  __$TargetEmployeeCopyWithImpl(this._self, this._then);

  final _TargetEmployee _self;
  final $Res Function(_TargetEmployee) _then;

/// Create a copy of TargetEmployee
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? address = null,Object? skills = null,Object? skillCount = null,}) {
  return _then(_TargetEmployee(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as TargetAddress,skills: null == skills ? _self._skills : skills // ignore: cast_nullable_to_non_nullable
as List<String>,skillCount: null == skillCount ? _self.skillCount : skillCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of TargetEmployee
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TargetAddressCopyWith<$Res> get address {
  
  return $TargetAddressCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}

// dart format on
