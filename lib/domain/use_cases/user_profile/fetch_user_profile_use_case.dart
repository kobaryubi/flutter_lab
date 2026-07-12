import 'package:flutter_lab/domain/access_token/access_token_repository.dart';
import 'package:flutter_lab/domain/entity/user_profile/user_profile.dart';
import 'package:flutter_lab/domain/user_profile/user_profile_repository.dart';
import 'package:result_dart/result_dart.dart';

/// Use case that fetches the signed-in user's profile with the current
/// access token.
class FetchUserProfileUseCase {
  FetchUserProfileUseCase({
    required AccessTokenRepository accessTokenRepository,
    required UserProfileRepository userProfileRepository,
  }) : _accessTokenRepository = accessTokenRepository,
       _userProfileRepository = userProfileRepository;

  final AccessTokenRepository _accessTokenRepository;
  final UserProfileRepository _userProfileRepository;

  /// Fetches the profile of the signed-in user.
  ///
  /// Fails with `DomainException.unauthenticated` when the API rejects the
  /// access token as expired, and with `DomainException.notFound` when no
  /// access token has been saved yet.
  AsyncResult<UserProfile> call() => _accessTokenRepository
      .getAccessToken()
      .toAsyncResult()
      .flatMap(_fetchWithAccessToken);

  /// Fetches the profile using [accessToken].
  AsyncResult<UserProfile> _fetchWithAccessToken(String accessToken) =>
      _userProfileRepository.fetchUserProfile(accessToken: accessToken);
}
