import 'package:flutter_lab/domain/entity/user_profile/user_profile.dart';
import 'package:result_dart/result_dart.dart';

/// Repository providing the signed-in user's profile.
abstract class UserProfileRepository {
  /// Fetches the profile of the user identified by [accessToken].
  ///
  /// Fails with `DomainException.unauthenticated` when the API rejects
  /// [accessToken] as expired or invalid.
  AsyncResult<UserProfile> fetchUserProfile({required String accessToken});
}
