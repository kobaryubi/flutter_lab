// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i2;
import 'package:flutter_lab/data/mapper/auto_mappr_demo/auto_mappr_demo_mapper.dart'
    as _i4;
import 'package:flutter_lab/domain/entity/auto_mappr_demo/source_models.dart'
    as _i3;
import 'package:flutter_lab/domain/entity/auto_mappr_demo/target_models.dart'
    as _i1;

/// {@template package:flutter_lab/data/mapper/auto_mappr_demo/auto_mappr_demo_mapper.dart}
/// Available mappings:
/// - `SourcePerson` → `TargetPerson`.
/// - `SourceAddress` → `TargetAddress`.
/// - `SourceEmployee` → `TargetEmployee`.
/// - `SourceRole` → `TargetRole` -- With default value.
/// {@endtemplate}
class $AutoMapprDemoMapper implements _i2.AutoMapprInterface {
  const $AutoMapprDemoMapper();

  Type _typeOf<T>() => T;

  List<_i2.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:flutter_lab/data/mapper/auto_mappr_demo/auto_mappr_demo_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i3.SourcePerson>() ||
            sourceTypeOf == _typeOf<_i3.SourcePerson?>()) &&
        (targetTypeOf == _typeOf<_i1.TargetPerson>() ||
            targetTypeOf == _typeOf<_i1.TargetPerson?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.SourceAddress>() ||
            sourceTypeOf == _typeOf<_i3.SourceAddress?>()) &&
        (targetTypeOf == _typeOf<_i1.TargetAddress>() ||
            targetTypeOf == _typeOf<_i1.TargetAddress?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.SourceEmployee>() ||
            sourceTypeOf == _typeOf<_i3.SourceEmployee?>()) &&
        (targetTypeOf == _typeOf<_i1.TargetEmployee>() ||
            targetTypeOf == _typeOf<_i1.TargetEmployee?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.SourceRole>() ||
            sourceTypeOf == _typeOf<_i3.SourceRole?>()) &&
        (targetTypeOf == _typeOf<_i1.TargetRole>() ||
            targetTypeOf == _typeOf<_i1.TargetRole?>())) {
      return true;
    }
    if (recursive) {
      for (final mappr in _delegates) {
        if (mappr.canConvert<SOURCE, TARGET>()) {
          return true;
        }
      }
    }
    return false;
  }

  /// {@macro AutoMapprInterface:convert}
  /// {@macro package:flutter_lab/data/mapper/auto_mappr_demo/auto_mappr_demo_mapper.dart}
  @override
  TARGET convert<SOURCE, TARGET>(SOURCE? model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _convert(model)!;
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convert(model)!;
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:tryConvert}
  /// {@macro package:flutter_lab/data/mapper/auto_mappr_demo/auto_mappr_demo_mapper.dart}
  @override
  TARGET? tryConvert<SOURCE, TARGET>(
    SOURCE? model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
    onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _safeConvert(model, onMappingError: onMappingError);
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvert(model, onMappingError: onMappingError);
      }
    }

    return null;
  }

  /// {@macro AutoMapprInterface:convertIterable}
  /// {@macro package:flutter_lab/data/mapper/auto_mappr_demo/auto_mappr_demo_mapper.dart}
  @override
  Iterable<TARGET> convertIterable<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET>((item) => _convert(item)!);
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertIterable(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Iterable.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:flutter_lab/data/mapper/auto_mappr_demo/auto_mappr_demo_mapper.dart}
  @override
  Iterable<TARGET?> tryConvertIterable<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
    onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET?>(
        (item) => _safeConvert(item, onMappingError: onMappingError),
      );
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertIterable(model, onMappingError: onMappingError);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertList}
  /// {@macro package:flutter_lab/data/mapper/auto_mappr_demo/auto_mappr_demo_mapper.dart}
  @override
  List<TARGET> convertList<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toList();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertList(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into List.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:flutter_lab/data/mapper/auto_mappr_demo/auto_mappr_demo_mapper.dart}
  @override
  List<TARGET?> tryConvertList<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
    onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(
        model,
        onMappingError: onMappingError,
      ).toList();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertList(model, onMappingError: onMappingError);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertSet}
  /// {@macro package:flutter_lab/data/mapper/auto_mappr_demo/auto_mappr_demo_mapper.dart}
  @override
  Set<TARGET> convertSet<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toSet();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertSet(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Set.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:flutter_lab/data/mapper/auto_mappr_demo/auto_mappr_demo_mapper.dart}
  @override
  Set<TARGET?> tryConvertSet<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
    onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(
        model,
        onMappingError: onMappingError,
      ).toSet();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertSet(model, onMappingError: onMappingError);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  TARGET? _convert<SOURCE, TARGET>(
    SOURCE? model, {
    bool canReturnNull = false,
  }) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i3.SourcePerson>() ||
            sourceTypeOf == _typeOf<_i3.SourcePerson?>()) &&
        (targetTypeOf == _typeOf<_i1.TargetPerson>() ||
            targetTypeOf == _typeOf<_i1.TargetPerson?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$SourcePerson_To__i1$TargetPerson(
            (model as _i3.SourcePerson?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.SourceAddress>() ||
            sourceTypeOf == _typeOf<_i3.SourceAddress?>()) &&
        (targetTypeOf == _typeOf<_i1.TargetAddress>() ||
            targetTypeOf == _typeOf<_i1.TargetAddress?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$SourceAddress_To__i1$TargetAddress(
            (model as _i3.SourceAddress?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.SourceEmployee>() ||
            sourceTypeOf == _typeOf<_i3.SourceEmployee?>()) &&
        (targetTypeOf == _typeOf<_i1.TargetEmployee>() ||
            targetTypeOf == _typeOf<_i1.TargetEmployee?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$SourceEmployee_To__i1$TargetEmployee(
            (model as _i3.SourceEmployee?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.SourceRole>() ||
            sourceTypeOf == _typeOf<_i3.SourceRole?>()) &&
        (targetTypeOf == _typeOf<_i1.TargetRole>() ||
            targetTypeOf == _typeOf<_i1.TargetRole?>())) {
      if (canReturnNull && model == null) {
        return (_i1.TargetRole.unknown as TARGET);
      }
      return (_map__i3$SourceRole_To__i1$TargetRole((model as _i3.SourceRole?))
          as TARGET);
    }
    throw Exception('No ${model.runtimeType} -> $targetTypeOf mapping.');
  }

  TARGET? _safeConvert<SOURCE, TARGET>(
    SOURCE? model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
    onMappingError,
  }) {
    if (!useSafeMapping<SOURCE, TARGET>()) {
      return _convert(model, canReturnNull: true);
    }
    try {
      return _convert(model, canReturnNull: true);
    } catch (e, s) {
      onMappingError?.call(e, s, model);
      return null;
    }
  }

  /// {@macro AutoMapprInterface:useSafeMapping}
  /// {@macro package:flutter_lab/data/mapper/auto_mappr_demo/auto_mappr_demo_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i1.TargetPerson _map__i3$SourcePerson_To__i1$TargetPerson(
    _i3.SourcePerson? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping SourcePerson → TargetPerson failed because SourcePerson was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<SourcePerson, TargetPerson> to handle null values during mapping.',
      );
    }
    return _i1.TargetPerson(
      id: model.id,
      firstName: model.firstName,
      lastName: model.lastName,
      age: model.ageInYears,
      displayName: _i4.AutoMapprDemoMapper.computeDisplayName(model),
      nickname: model.nickname ?? r'N/A',
      role: _map__i3$SourceRole_To__i1$TargetRole(model.role),
    );
  }

  _i1.TargetAddress _map__i3$SourceAddress_To__i1$TargetAddress(
    _i3.SourceAddress? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping SourceAddress → TargetAddress failed because SourceAddress was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<SourceAddress, TargetAddress> to handle null values during mapping.',
      );
    }
    return _i1.TargetAddress(
      street: model.street,
      city: model.city,
      zipCode: model.zipCode,
    );
  }

  _i1.TargetEmployee _map__i3$SourceEmployee_To__i1$TargetEmployee(
    _i3.SourceEmployee? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping SourceEmployee → TargetEmployee failed because SourceEmployee was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<SourceEmployee, TargetEmployee> to handle null values during mapping.',
      );
    }
    return _i1.TargetEmployee(
      name: model.name,
      address: _map__i3$SourceAddress_To__i1$TargetAddress(model.address),
      skills: model.skills,
      skillCount: _i4.AutoMapprDemoMapper.computeSkillCount(model),
    );
  }

  _i1.TargetRole _map__i3$SourceRole_To__i1$TargetRole(_i3.SourceRole? input) {
    final model = input;
    if (model == null) {
      return _i1.TargetRole.unknown;
    }
    return _i1.TargetRole.values.firstWhere(
      (x) => x.name == model.name,
      orElse: () => _i1.TargetRole.unknown,
    );
  }
}
