import 'package:freezed_annotation/freezed_annotation.dart';

part 'source_models.freezed.dart';

/// Source model representing a person before mapping.
@freezed
abstract class SourcePerson with _$SourcePerson {
  const factory SourcePerson({
    required int id,
    required String firstName,
    required String lastName,
    required int ageInYears,
    String? nickname,
  }) = _SourcePerson;
}

/// Source model representing an address before mapping.
@freezed
abstract class SourceAddress with _$SourceAddress {
  const factory SourceAddress({
    required String street,
    required String city,
    required String zipCode,
  }) = _SourceAddress;
}

/// Source model representing an employee before mapping.
@freezed
abstract class SourceEmployee with _$SourceEmployee {
  const factory SourceEmployee({
    required String name,
    required SourceAddress address,
    required List<String> skills,
  }) = _SourceEmployee;
}
