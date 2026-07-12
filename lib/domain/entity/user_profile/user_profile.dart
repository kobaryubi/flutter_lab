import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

/// Profile of the signed-in user shown on the my page screen.
@freezed
abstract class UserProfile with _$UserProfile {
  const factory UserProfile({required int id, required String name}) =
      _UserProfile;

  factory UserProfile.fromJson(Map<String, Object?> json) =>
      _$UserProfileFromJson(json);
}
