import 'package:freezed_annotation/freezed_annotation.dart';

part 'target_models.freezed.dart';

/// Target model representing a person after mapping.
@freezed
abstract class TargetPerson with _$TargetPerson {
  const factory TargetPerson({
    required int id,
    required String firstName,
    required String lastName,
    required int age,
    required String displayName,
    required String nickname,
    required TargetRole role,
  }) = _TargetPerson;
}

/// Target model representing an address after mapping.
@freezed
abstract class TargetAddress with _$TargetAddress {
  const factory TargetAddress({
    required String street,
    required String city,
    required String zipCode,
  }) = _TargetAddress;
}

/// Target role representing a person's role after mapping.
enum TargetRole {
  /// Student role.
  student,

  /// Employee role.
  employee,

  /// Unknown role — fallback for unmatched source values.
  unknown,
}

/// Target model representing an employee after mapping.
@freezed
abstract class TargetEmployee with _$TargetEmployee {
  const factory TargetEmployee({
    required String name,
    required TargetAddress address,
    required List<String> skills,
    required int skillCount,
  }) = _TargetEmployee;
}
