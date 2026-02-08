// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'source_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SourcePerson {

 int get id; String get firstName; String get lastName; int get ageInYears; String? get nickname;
/// Create a copy of SourcePerson
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SourcePersonCopyWith<SourcePerson> get copyWith => _$SourcePersonCopyWithImpl<SourcePerson>(this as SourcePerson, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SourcePerson&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.ageInYears, ageInYears) || other.ageInYears == ageInYears)&&(identical(other.nickname, nickname) || other.nickname == nickname));
}


@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,ageInYears,nickname);

@override
String toString() {
  return 'SourcePerson(id: $id, firstName: $firstName, lastName: $lastName, ageInYears: $ageInYears, nickname: $nickname)';
}


}

/// @nodoc
abstract mixin class $SourcePersonCopyWith<$Res>  {
  factory $SourcePersonCopyWith(SourcePerson value, $Res Function(SourcePerson) _then) = _$SourcePersonCopyWithImpl;
@useResult
$Res call({
 int id, String firstName, String lastName, int ageInYears, String? nickname
});




}
/// @nodoc
class _$SourcePersonCopyWithImpl<$Res>
    implements $SourcePersonCopyWith<$Res> {
  _$SourcePersonCopyWithImpl(this._self, this._then);

  final SourcePerson _self;
  final $Res Function(SourcePerson) _then;

/// Create a copy of SourcePerson
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? ageInYears = null,Object? nickname = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,ageInYears: null == ageInYears ? _self.ageInYears : ageInYears // ignore: cast_nullable_to_non_nullable
as int,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SourcePerson].
extension SourcePersonPatterns on SourcePerson {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SourcePerson value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SourcePerson() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SourcePerson value)  $default,){
final _that = this;
switch (_that) {
case _SourcePerson():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SourcePerson value)?  $default,){
final _that = this;
switch (_that) {
case _SourcePerson() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String firstName,  String lastName,  int ageInYears,  String? nickname)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SourcePerson() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.ageInYears,_that.nickname);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String firstName,  String lastName,  int ageInYears,  String? nickname)  $default,) {final _that = this;
switch (_that) {
case _SourcePerson():
return $default(_that.id,_that.firstName,_that.lastName,_that.ageInYears,_that.nickname);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String firstName,  String lastName,  int ageInYears,  String? nickname)?  $default,) {final _that = this;
switch (_that) {
case _SourcePerson() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.ageInYears,_that.nickname);case _:
  return null;

}
}

}

/// @nodoc


class _SourcePerson implements SourcePerson {
  const _SourcePerson({required this.id, required this.firstName, required this.lastName, required this.ageInYears, this.nickname});
  

@override final  int id;
@override final  String firstName;
@override final  String lastName;
@override final  int ageInYears;
@override final  String? nickname;

/// Create a copy of SourcePerson
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SourcePersonCopyWith<_SourcePerson> get copyWith => __$SourcePersonCopyWithImpl<_SourcePerson>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SourcePerson&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.ageInYears, ageInYears) || other.ageInYears == ageInYears)&&(identical(other.nickname, nickname) || other.nickname == nickname));
}


@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,ageInYears,nickname);

@override
String toString() {
  return 'SourcePerson(id: $id, firstName: $firstName, lastName: $lastName, ageInYears: $ageInYears, nickname: $nickname)';
}


}

/// @nodoc
abstract mixin class _$SourcePersonCopyWith<$Res> implements $SourcePersonCopyWith<$Res> {
  factory _$SourcePersonCopyWith(_SourcePerson value, $Res Function(_SourcePerson) _then) = __$SourcePersonCopyWithImpl;
@override @useResult
$Res call({
 int id, String firstName, String lastName, int ageInYears, String? nickname
});




}
/// @nodoc
class __$SourcePersonCopyWithImpl<$Res>
    implements _$SourcePersonCopyWith<$Res> {
  __$SourcePersonCopyWithImpl(this._self, this._then);

  final _SourcePerson _self;
  final $Res Function(_SourcePerson) _then;

/// Create a copy of SourcePerson
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? ageInYears = null,Object? nickname = freezed,}) {
  return _then(_SourcePerson(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,ageInYears: null == ageInYears ? _self.ageInYears : ageInYears // ignore: cast_nullable_to_non_nullable
as int,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$SourceAddress {

 String get street; String get city; String get zipCode;
/// Create a copy of SourceAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SourceAddressCopyWith<SourceAddress> get copyWith => _$SourceAddressCopyWithImpl<SourceAddress>(this as SourceAddress, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SourceAddress&&(identical(other.street, street) || other.street == street)&&(identical(other.city, city) || other.city == city)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode));
}


@override
int get hashCode => Object.hash(runtimeType,street,city,zipCode);

@override
String toString() {
  return 'SourceAddress(street: $street, city: $city, zipCode: $zipCode)';
}


}

/// @nodoc
abstract mixin class $SourceAddressCopyWith<$Res>  {
  factory $SourceAddressCopyWith(SourceAddress value, $Res Function(SourceAddress) _then) = _$SourceAddressCopyWithImpl;
@useResult
$Res call({
 String street, String city, String zipCode
});




}
/// @nodoc
class _$SourceAddressCopyWithImpl<$Res>
    implements $SourceAddressCopyWith<$Res> {
  _$SourceAddressCopyWithImpl(this._self, this._then);

  final SourceAddress _self;
  final $Res Function(SourceAddress) _then;

/// Create a copy of SourceAddress
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


/// Adds pattern-matching-related methods to [SourceAddress].
extension SourceAddressPatterns on SourceAddress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SourceAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SourceAddress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SourceAddress value)  $default,){
final _that = this;
switch (_that) {
case _SourceAddress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SourceAddress value)?  $default,){
final _that = this;
switch (_that) {
case _SourceAddress() when $default != null:
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
case _SourceAddress() when $default != null:
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
case _SourceAddress():
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
case _SourceAddress() when $default != null:
return $default(_that.street,_that.city,_that.zipCode);case _:
  return null;

}
}

}

/// @nodoc


class _SourceAddress implements SourceAddress {
  const _SourceAddress({required this.street, required this.city, required this.zipCode});
  

@override final  String street;
@override final  String city;
@override final  String zipCode;

/// Create a copy of SourceAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SourceAddressCopyWith<_SourceAddress> get copyWith => __$SourceAddressCopyWithImpl<_SourceAddress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SourceAddress&&(identical(other.street, street) || other.street == street)&&(identical(other.city, city) || other.city == city)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode));
}


@override
int get hashCode => Object.hash(runtimeType,street,city,zipCode);

@override
String toString() {
  return 'SourceAddress(street: $street, city: $city, zipCode: $zipCode)';
}


}

/// @nodoc
abstract mixin class _$SourceAddressCopyWith<$Res> implements $SourceAddressCopyWith<$Res> {
  factory _$SourceAddressCopyWith(_SourceAddress value, $Res Function(_SourceAddress) _then) = __$SourceAddressCopyWithImpl;
@override @useResult
$Res call({
 String street, String city, String zipCode
});




}
/// @nodoc
class __$SourceAddressCopyWithImpl<$Res>
    implements _$SourceAddressCopyWith<$Res> {
  __$SourceAddressCopyWithImpl(this._self, this._then);

  final _SourceAddress _self;
  final $Res Function(_SourceAddress) _then;

/// Create a copy of SourceAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? street = null,Object? city = null,Object? zipCode = null,}) {
  return _then(_SourceAddress(
street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SourceEmployee {

 String get name; SourceAddress get address; List<String> get skills;
/// Create a copy of SourceEmployee
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SourceEmployeeCopyWith<SourceEmployee> get copyWith => _$SourceEmployeeCopyWithImpl<SourceEmployee>(this as SourceEmployee, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SourceEmployee&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other.skills, skills));
}


@override
int get hashCode => Object.hash(runtimeType,name,address,const DeepCollectionEquality().hash(skills));

@override
String toString() {
  return 'SourceEmployee(name: $name, address: $address, skills: $skills)';
}


}

/// @nodoc
abstract mixin class $SourceEmployeeCopyWith<$Res>  {
  factory $SourceEmployeeCopyWith(SourceEmployee value, $Res Function(SourceEmployee) _then) = _$SourceEmployeeCopyWithImpl;
@useResult
$Res call({
 String name, SourceAddress address, List<String> skills
});


$SourceAddressCopyWith<$Res> get address;

}
/// @nodoc
class _$SourceEmployeeCopyWithImpl<$Res>
    implements $SourceEmployeeCopyWith<$Res> {
  _$SourceEmployeeCopyWithImpl(this._self, this._then);

  final SourceEmployee _self;
  final $Res Function(SourceEmployee) _then;

/// Create a copy of SourceEmployee
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? address = null,Object? skills = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as SourceAddress,skills: null == skills ? _self.skills : skills // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of SourceEmployee
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SourceAddressCopyWith<$Res> get address {
  
  return $SourceAddressCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}


/// Adds pattern-matching-related methods to [SourceEmployee].
extension SourceEmployeePatterns on SourceEmployee {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SourceEmployee value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SourceEmployee() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SourceEmployee value)  $default,){
final _that = this;
switch (_that) {
case _SourceEmployee():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SourceEmployee value)?  $default,){
final _that = this;
switch (_that) {
case _SourceEmployee() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  SourceAddress address,  List<String> skills)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SourceEmployee() when $default != null:
return $default(_that.name,_that.address,_that.skills);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  SourceAddress address,  List<String> skills)  $default,) {final _that = this;
switch (_that) {
case _SourceEmployee():
return $default(_that.name,_that.address,_that.skills);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  SourceAddress address,  List<String> skills)?  $default,) {final _that = this;
switch (_that) {
case _SourceEmployee() when $default != null:
return $default(_that.name,_that.address,_that.skills);case _:
  return null;

}
}

}

/// @nodoc


class _SourceEmployee implements SourceEmployee {
  const _SourceEmployee({required this.name, required this.address, required final  List<String> skills}): _skills = skills;
  

@override final  String name;
@override final  SourceAddress address;
 final  List<String> _skills;
@override List<String> get skills {
  if (_skills is EqualUnmodifiableListView) return _skills;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_skills);
}


/// Create a copy of SourceEmployee
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SourceEmployeeCopyWith<_SourceEmployee> get copyWith => __$SourceEmployeeCopyWithImpl<_SourceEmployee>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SourceEmployee&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other._skills, _skills));
}


@override
int get hashCode => Object.hash(runtimeType,name,address,const DeepCollectionEquality().hash(_skills));

@override
String toString() {
  return 'SourceEmployee(name: $name, address: $address, skills: $skills)';
}


}

/// @nodoc
abstract mixin class _$SourceEmployeeCopyWith<$Res> implements $SourceEmployeeCopyWith<$Res> {
  factory _$SourceEmployeeCopyWith(_SourceEmployee value, $Res Function(_SourceEmployee) _then) = __$SourceEmployeeCopyWithImpl;
@override @useResult
$Res call({
 String name, SourceAddress address, List<String> skills
});


@override $SourceAddressCopyWith<$Res> get address;

}
/// @nodoc
class __$SourceEmployeeCopyWithImpl<$Res>
    implements _$SourceEmployeeCopyWith<$Res> {
  __$SourceEmployeeCopyWithImpl(this._self, this._then);

  final _SourceEmployee _self;
  final $Res Function(_SourceEmployee) _then;

/// Create a copy of SourceEmployee
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? address = null,Object? skills = null,}) {
  return _then(_SourceEmployee(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as SourceAddress,skills: null == skills ? _self._skills : skills // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of SourceEmployee
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SourceAddressCopyWith<$Res> get address {
  
  return $SourceAddressCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}

// dart format on
